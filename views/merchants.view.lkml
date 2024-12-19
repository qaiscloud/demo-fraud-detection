view: merchants {
  sql_table_name: `fraud_detection.merchants` ;;
  drill_fields: [merchant_id]

  dimension: merchant_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.merchant_id ;;
  }
  dimension: average_transaction_amount {
    type: number
    sql: ${TABLE}.average_transaction_amount ;;
  }
  dimension: fraud_rate {
    type: number
    sql: ${TABLE}.fraud_rate ;;
  }
  dimension: merchant_category {
    type: string
    sql: ${TABLE}.merchant_category ;;
  }
  dimension: merchant_country {
    type: string
    sql: ${TABLE}.merchant_country ;;
  }
  dimension: merchant_name {
    type: string
    sql: ${TABLE}.merchant_name ;;
  }
  dimension: risk_score {
    type: number
    sql: ${TABLE}.risk_score ;;
  }
  dimension: total_transaction_count {
    type: number
    sql: ${TABLE}.total_transaction_count ;;
  }
  measure: count {
    type: count
    drill_fields: [merchant_id, merchant_name, transactions.count]
  }
}
