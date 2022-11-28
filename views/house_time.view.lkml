view: house_time {
  sql_table_name: `rental_dataset.House_time`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

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

  dimension: date {
    type: string
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

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
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
    drill_fields: [id]
  }
}
