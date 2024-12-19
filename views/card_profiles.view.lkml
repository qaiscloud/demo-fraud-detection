view: card_profiles {
  sql_table_name: `fraud_detection.card_profiles` ;;

  dimension: card_id {
    type: string
    sql: ${TABLE}.card_id ;;
  }
  dimension: card_status {
    type: string
    sql: ${TABLE}.card_status ;;
  }
  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }
  dimension: credit_limit {
    type: number
    sql: ${TABLE}.credit_limit ;;
  }
  dimension: customer_risk_score {
    type: number
    sql: ${TABLE}.customer_risk_score ;;
  }
  dimension_group: issue {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.issue_date ;;
  }
  dimension: typical_amounts {
    hidden: yes
    sql: ${TABLE}.typical_amounts ;;
  }
  dimension: typical_countries {
    hidden: yes
    sql: ${TABLE}.typical_countries ;;
  }
  dimension: typical_merchants {
    hidden: yes
    sql: ${TABLE}.typical_merchants ;;
  }
  measure: count {
    type: count
  }
}

view: card_profiles__typical_amounts {

  dimension: card_profiles__typical_amounts {
    type: number
    sql: card_profiles__typical_amounts ;;
  }
}

view: card_profiles__typical_countries {

  dimension: card_profiles__typical_countries {
    type: string
    sql: card_profiles__typical_countries ;;
  }
}

view: card_profiles__typical_merchants {

  dimension: card_profiles__typical_merchants {
    type: string
    sql: card_profiles__typical_merchants ;;
  }
}
