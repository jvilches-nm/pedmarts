connection: "dm_rea"

# include all the views
include: "/views/**/*.view"

datagroup: annual_attendance_stats_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: annual_attendance_stats_default_datagroup

explore: annual_attendance {}
