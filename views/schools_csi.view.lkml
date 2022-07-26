view: schools_csi {
  sql_table_name: REA.Schools_csi ;;

  dimension: agaid {
    type: string
    label: "REA Unique School ID"
    sql: ${TABLE}.AGAID ;;
  }

  dimension: csi_school {
    type: string
    label: "Comprehensive Support Improvement School"
    description: "School is CSI - Yes/No"
    sql: case ${TABLE}.CSI when 1 then 'Yes' else 'No' end;;
  }

  measure: csi {
    type: sum
    label: "Comprehensive Support Improvement School Count"
    description: "1 if CSI school, 0 if not"
    sql: ${TABLE}.CSI ;;
  }

  dimension: csientry_reason {
    type: string
    label: "CSI Entry Reason"
    description: "Reason a school joined CSI program"
    sql: ${TABLE}.CSIEntryReason ;;
  }

  dimension: csiexit_year {
    type: string
    label: "CSI Exit Year"
    description: "Year a school left CSI program"
    sql: ${TABLE}.CSIExitYear ;;
  }

  dimension: dist_code {
    type: string
    sql: ${TABLE}.DistCode ;;
  }

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: hs {
    type: string
    sql: ${TABLE}.HS ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: sch_name {
    type: string
    label: "School Name"
    sql: ${TABLE}.SchName ;;
  }

  dimension: sch_numb {
    type: string
    label: "School Number"
    description: "District number and school number concatenated."
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: sch_type {
    type: string
    label: "School Type"
    sql: ${TABLE}.SchType ;;
  }

  dimension: sy {
    type: number
    label: "School Year"
    description: "Ending year of the school year"
    sql: ${TABLE}.SY ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, sch_name]
  }
}
