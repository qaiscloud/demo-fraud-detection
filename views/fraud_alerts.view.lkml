view: fraud_alerts {
  sql_table_name: `fraud_detection.fraud_alerts` ;;

  dimension: alert_id {
    type: string
    sql: ${TABLE}.alert_id ;;
  }
  dimension: alert_score {
    type: number
    sql: ${TABLE}.alert_score ;;
  }
  dimension: alert_status {
    type: string
    sql: ${TABLE}.alert_status ;;
  }
  dimension_group: alert_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.alert_timestamp ;;
  }
  dimension: alert_type {
    type: string
    sql: ${TABLE}.alert_type ;;
  }
  dimension: investigation_notes {
    type: string
    sql: ${TABLE}.investigation_notes ;;
  }
  dimension_group: resolution_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.resolution_timestamp ;;
  }
  dimension: resolution_type {
    type: string
    sql: ${TABLE}.resolution_type ;;
  }
  dimension: transaction_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
    drill_fields: [transactions.transaction_id]
  }
}
