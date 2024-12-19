view: transactions {
  sql_table_name: `fraud_detection.transactions` ;;
  drill_fields: [transaction_id]

  dimension: transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: card_id {
    type: string
    sql: ${TABLE}.card_id ;;
  }
  dimension: card_present {
    type: yesno
    sql: ${TABLE}.card_present ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension_group: detection_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour, hour_of_day]
    datatype: datetime
    sql: ${TABLE}.detection_timestamp ;;
  }
  dimension: fraud_type {
    type: string
    sql: ${TABLE}.fraud_type ;;
  }
  dimension: is_fraudulent {
    type: yesno
    sql: ${TABLE}.is_fraudulent ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: merchant_category {
    type: string
    sql: ${TABLE}.merchant_category ;;
  }
  dimension: merchant_country {
    type: string
    sql: ${TABLE}.merchant_country ;;
  }
  dimension: merchant_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.merchant_id ;;
  }
  dimension_group: transaction_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour, hour_of_day]
    datatype: datetime
    sql: ${TABLE}.transaction_timestamp ;;
  }
  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }
  measure: count {
    type: count
    drill_fields: [transaction_id, merchants.merchant_name, merchants.merchant_id, fraud_alerts.count]
  }
  measure: fraud_rate {
    type: number
    value_format_name: percent_2
    sql: SAFE_DIVIDE(
      SUM(CASE WHEN ${is_fraudulent} THEN 1 ELSE 0 END),
      COUNT(*)
    ) ;;
  }
  measure: total_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
  }
}
