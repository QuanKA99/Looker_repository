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
  dimension: user_id {
    primary_key: yes
    type :  number
    sql: ${TABLE}.ID ;;
  }
  dimension: Built_up_size {
    type:  number
    sql: ${TABLE}.BuiltUpSize ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension_group: created_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreatedDateTime ;;
  }

  dimension: created_user {
    type: string
    sql: ${TABLE}.CreatedUser ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSourceID ;;
  }

  dimension: furnishing {
    type: string
    sql: ${TABLE}.Furnishing ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
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

  dimension: postcode {
    type: string
    sql: ${TABLE}.Postcode ;;
  }

  dimension_group: posted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PostedDate ;;
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}.PropertyAddress ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.PropertyName ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.PropertyType ;;
  }

  dimension: rental_per_mth {
    type: number
    sql: ${TABLE}.RentalPerMth ;;
  }

  dimension: source_url {
    type: string
    sql: ${TABLE}.SourceUrl ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension_group: updated_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UpdatedDateTime ;;
  }

  dimension: updated_user {
    type: string
    sql: ${TABLE}.UpdatedUser ;;
  }

  measure: count {
    type: count
    drill_fields: [user_id, property_name]
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
