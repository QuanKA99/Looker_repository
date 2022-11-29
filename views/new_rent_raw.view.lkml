view: new_rent_raw {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  sql_table_name: `rental_dataset.RentRaw` ;;
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
   dimension: apartment {
    type: number
    sql: ${TABLE}.Apartment ;;
  }

  dimension: built_up_size {
    type: number
    sql: ${TABLE}.BuiltUpSize ;;
  }

  dimension: bungalow {
    type: number
    sql: ${TABLE}.Bungalow ;;
  }

  dimension: cluster_house {
    type: number
    sql: ${TABLE}.Cluster_House ;;
  }

  dimension: condominium {
    type: number
    sql: ${TABLE}.Condominium ;;
  }

  dimension: flat {
    type: number
    sql: ${TABLE}.Flat ;;
  }

  dimension: four_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.Four_sty_Terrace_LinkHouse ;;
  }

  dimension: fully_furnished {
    type: number
    sql: ${TABLE}.Fully_Furnished ;;
  }

  dimension: johor {
    type: number
    sql: ${TABLE}.johor ;;
  }

  dimension: kuala_lumpur {
    type: number
    sql: ${TABLE}.kuala_lumpur ;;
  }

  dimension: no_of_bathroom {
    type: number
    sql: ${TABLE}.NoOfBathroom ;;
  }

  dimension: no_of_bedroom {
    type: number
    sql: ${TABLE}.NoOfBedroom ;;
  }

  dimension: no_of_parking {
    type: number
    sql: ${TABLE}.NoOfParking ;;
  }

  dimension: one_point_five_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.One_point_five_sty_Terrace_LinkHouse ;;
  }

  dimension: one_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.One_sty_Terrace_LinkHouse ;;
  }

  dimension: partly_furnished {
    type: number
    sql: ${TABLE}.Partly_Furnished ;;
  }

  dimension: putrajaya {
    type: number
    sql: ${TABLE}.putrajaya ;;
  }

  dimension: rental_per_mth_after {
    type: number
    sql: ${TABLE}.RentalPerMth_After ;;
  }

  dimension: residential_land {
    type: number
    sql: ${TABLE}.Residential_Land ;;
  }

  dimension: selangor {
    type: number
    sql: ${TABLE}.selangor ;;
  }

  dimension: semi_detached_house {
    type: number
    sql: ${TABLE}.Semi_detached_House ;;
  }

  dimension: serviced_residence {
    type: number
    sql: ${TABLE}.Serviced_Residence ;;
  }

  dimension: three_point_five_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.Three_point_five_sty_Terrace_LinkHouse ;;
  }

  dimension: three_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.Three_sty_Terrace_LinkHouse ;;
  }

  dimension: townhouse {
    type: number
    sql: ${TABLE}.Townhouse ;;
  }

  dimension: two_point_five_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.Two_point_five_sty_Terrace_LinkHouse ;;
  }

  dimension: two_sty_terrace_link_house {
    type: number
    sql: ${TABLE}.Two_sty_Terrace_LinkHouse ;;
  }

  dimension: unfurnished {
    type: number
    sql: ${TABLE}.Unfurnished ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: new_rent_raw {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
