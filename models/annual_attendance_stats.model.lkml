connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: annual_attendance_stats_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: annual_attendance_stats_default_datagroup

explore: annual_attendance {}


explore: aip_submissions  {
  join: districts_list {
    relationship: many_to_one
    type: left_outer
    sql_on: ${aip_submissions.district_code} = ${districts_list.pk_district_code};;
    }

  join: schools_list{
    relationship: many_to_one
    type: left_outer
    sql_on: ${aip_submissions.school_code} = ${schools_list.school_code};;

  }
}
