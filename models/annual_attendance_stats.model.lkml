connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: annual_attendance_stats_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: annual_attendance_stats_default_datagroup

explore: annual_attendance {
  join: aip_submissions {
    relationship: many_to_one
    type: left_outer
    sql_on: ${annual_attendance.district_code} = ${aip_submissions.district_code} and
            ${annual_attendance.school_code}   = ${aip_submissions.school_code} and
            ${aip_submissions.year_id} = 1;;
  }
}

explore: annual_attendance_school_year {}
