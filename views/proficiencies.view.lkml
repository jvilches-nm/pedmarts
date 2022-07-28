view: proficiencies {
  sql_table_name: REA.Proficiencies ;;

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: district_code {
    type: number
    sql: ${TABLE}.District_Code ;;
  }

  dimension: group_keyword {
    type: string
    label: "Student Demographic Group"
    description: "Student population demographic group"
    sql: ${TABLE}.Group_Keyword ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: metric {
    type: string
    label: "Proficiency Subject"
    description: "Proficiency subject - read/math/science"
    sql: ${TABLE}.Metric ;;
  }

  measure: proficiency {
    type: max
    value_format: "0.0\%"
    sql: ${TABLE}.Proficiency ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: school_number {
    type: number
    sql: ${TABLE}.SchoolNumber ;;
  }

  dimension: sy {
    type: number
    label: "School Year"
    description: "Second calendar year of the school year"
    sql: ${TABLE}.SY ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [sch_name, dist_name]
  }
}
