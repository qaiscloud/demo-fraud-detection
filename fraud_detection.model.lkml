connection: "fraud_detection"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: transactions {
  join: merchants {
    type: left_outer
    sql_on: ${transactions.merchant_id} = ${merchants.merchant_id} ;;
    relationship: many_to_one
  }

  join: card_profiles {
    type: left_outer
    sql_on: ${transactions.card_id} = ${card_profiles.card_id} ;;
    relationship: many_to_one
  }

  join: fraud_alerts {
    type: left_outer
    sql_on: ${transactions.transaction_id} = ${fraud_alerts.transaction_id} ;;
    relationship: one_to_many
  }
}
