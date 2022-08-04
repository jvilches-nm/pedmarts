connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: rea_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rea_default_datagroup

explore: attendance {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${attendance.student_id}=${student_snapshot.student_id}
         and ${attendance.snapshot_date} = ${student_snapshot.snapshot_date} and ${attendance.district_code} = ${student_snapshot.district_code}
        and ${attendance.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: discipline {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${discipline.student_id} = ${student_snapshot.student_id}
      and ${discipline.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: foster_care {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${foster_care.fc_student_id} = ${student_snapshot.student_id}
          and ${foster_care.school_year_date} = ${student_snapshot.school_year_end_date}
          ;;
    }
  }

explore: highschool_cohort_outcomes {}

explore: migrant_students {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${migrant_students.ssid} = ${student_snapshot.student_id}
      and ${migrant_students.school_year_end_date} = ${student_snapshot.school_year_end_date};;
  }
}

explore: program_fact {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${program_fact.student_id} = ${student_snapshot.student_id} and
        ${program_fact.school_year_date} = ${student_snapshot.school_year_end_date} and
        ${program_fact.student_snapshot_date} = ${student_snapshot.snapshot_date};;
  }
}

explore: school_enroll {
  join: student_snapshot {
    relationship: many_to_one
    type:  left_outer
    sql_on:  ${school_enroll.student_id} = ${student_snapshot.student_id}
      and ${school_enroll.school_year}=${student_snapshot.school_year_end_date};;
  }
}

explore: special_ed_snap {
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snap.student_id} = ${student_snapshot.student_id}
      and ${special_ed_snap.school_year_date} = ${student_snapshot.school_year_end_date} ;;
  }
}

explore: ssrs_dual_credit_student_with_grade {
  label: "Dual Credit Course With Grades List"
}

explore: ssrs_list_assessment_fact{
  label: "List Assessment Fact"
}

explore: ssrs_perkins_student_listing {
  label: "Perkins Student Listing"
}

explore: student {}

explore: schools_csi {}

explore: student_assessments {}

explore: proficiencies {}

explore: grad_student {
  join: student {
    relationship: many_to_one
    type: left_outer
    sql_on: ${grad_student.student_id} = ${student.student_id}
      and ${grad_student.cohort_sy} = ${student.school_year_year};;
  }

}

explore: grad_data {
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: format(${grad_data.dist_code}, '000')=${districts.district_code}
       and ${grad_data.sy}=year(${districts.school_year_end_date})};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: format(${grad_data.dist_code},'000')=${locations.district_code}
    and format(${grad_data.location_id}, '000')=${locations.location_id}
    and ${grad_data.sy}=year(${locations.school_year_end_date});;
  }
}

explore: student_snapshot {
  label: "Student Snapshot"
}

explore: teacher {}

map_layer: my_district_layer {
  file: "/dist_map.topojson"
  property_key: "name"
}
