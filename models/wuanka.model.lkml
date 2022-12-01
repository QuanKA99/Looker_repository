connection: "bigquery"

include: "/views/*.view.lkml"
include: "/views/**/*.view"
include: "/dashboards/first_look.dashboard.lookml"
include: "/dashboards/Second_look.dashboard.lookml"
include: "/dashboards/Pie_chart.dashboard.lookml"
include: "/dashboards/sccatterplot.dashboard.lookml"
# include all views in the views/ folder in this project
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
explore: new_rent_raw {}

explore: rent_raw {}

explore: rent_raw_processed {
  join: new_rent_raw {
    type: left_outer
    sql_on: ${rent_raw_processed.built_up_size} = ${new_rent_raw.built_up_size} ;;
    relationship: one_to_one
    }
}
explore: rent_prob_processed {}
