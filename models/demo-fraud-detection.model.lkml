connection: "fraud_detection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: demo_fraud_detection_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_fraud_detection_default_datagroup

explore: card_profiles {
    join: card_profiles__typical_amounts {
      view_label: "Card Profiles: Typical Amounts"
      sql: LEFT JOIN UNNEST(${card_profiles.typical_amounts}) as card_profiles__typical_amounts ;;
      relationship: one_to_many
    }
    join: card_profiles__typical_countries {
      view_label: "Card Profiles: Typical Countries"
      sql: LEFT JOIN UNNEST(${card_profiles.typical_countries}) as card_profiles__typical_countries ;;
      relationship: one_to_many
    }
    join: card_profiles__typical_merchants {
      view_label: "Card Profiles: Typical Merchants"
      sql: LEFT JOIN UNNEST(${card_profiles.typical_merchants}) as card_profiles__typical_merchants ;;
      relationship: one_to_many
    }
}

explore: transactions {
  join: merchants {
    type: left_outer
    sql_on: ${transactions.merchant_id} = ${merchants.merchant_id} ;;
    relationship: many_to_one
  }
}

explore: merchants {}

explore: fraud_alerts {
  join: transactions {
    type: left_outer
    sql_on: ${fraud_alerts.transaction_id} = ${transactions.transaction_id} ;;
    relationship: many_to_one
  }

  join: merchants {
    type: left_outer
    sql_on: ${transactions.merchant_id} = ${merchants.merchant_id} ;;
    relationship: many_to_one
  }
}
