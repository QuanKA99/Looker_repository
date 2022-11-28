view: house_time_proceesed {
  sql_table_name: `rental_dataset.House_time_Proceesed`
    ;;

  dimension: bathrooms {
    type: number
    sql: ${TABLE}.bathrooms ;;
  }

  dimension: bedrooms {
    type: number
    sql: ${TABLE}.bedrooms ;;
  }

  dimension: condition {
    type: number
    sql: ${TABLE}.condition ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: floors {
    type: number
    sql: ${TABLE}.floors ;;
  }

  dimension: grade {
    type: number
    sql: ${TABLE}.grade ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: round_lat {
    type: number
    sql: ${TABLE}.round_lat ;;
  }

  dimension: round_long {
    type: number
    sql: ${TABLE}.round_long ;;
  }

  dimension: sqft_above {
    type: number
    sql: ${TABLE}.sqft_above ;;
  }

  dimension: sqft_basement {
    type: number
    sql: ${TABLE}.sqft_basement ;;
  }

  dimension: sqft_living {
    type: number
    sql: ${TABLE}.sqft_living ;;
  }

  dimension: sqft_living15 {
    type: number
    sql: ${TABLE}.sqft_living15 ;;
  }

  dimension: sqft_lot {
    type: number
    sql: ${TABLE}.sqft_lot ;;
  }

  dimension: sqft_lot15 {
    type: number
    sql: ${TABLE}.sqft_lot15 ;;
  }

  dimension: view {
    type: number
    sql: ${TABLE}.view ;;
  }

  dimension: waterfront {
    type: number
    sql: ${TABLE}.waterfront ;;
  }

  dimension: yr_built {
    type: number
    sql: ${TABLE}.yr_built ;;
  }

  dimension: yr_renovated {
    type: number
    sql: ${TABLE}.yr_renovated ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
