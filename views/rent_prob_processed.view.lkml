view: rent_prob_processed {
  sql_table_name: `rental_dataset.RentProb_Processed`
    ;;

  dimension: accept {
    type: number
    sql: ${TABLE}.Accept ;;
  }

  dimension: apartment {
    type: number
    sql: ${TABLE}.Apartment ;;
  }

  dimension: beds {
    type: number
    sql: ${TABLE}.Beds ;;
  }

  dimension: date {
    type: number
    sql: ${TABLE}.Date ;;
  }

  dimension: pic_quality {
    type: number
    sql: ${TABLE}.Pic_Quality ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: region {
    type: number
    sql: ${TABLE}.Region ;;
  }

  dimension: review {
    type: number
    sql: ${TABLE}.Review ;;
  }

  dimension: weekday {
    type: number
    sql: ${TABLE}.Weekday ;;
  }

  dimension: rating {
    group_label: "Rating"
    sql: CASE
          WHEN ${review} <= 3 THEN "POOR"
          WHEN ${review} <4 AND ${review} >3 THEN "AVERAGE"
          WHEN ${review} >=4 THEN "EXCELLENT"
          END;;
  }
  measure: total_price {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.price ;;
  }

  measure: sum_poor {
    type: sum
    value_format_name: usd
    sql: ${price} ;;
    filters: {
    field: rating
    value: "Poor"
    }
  }
  measure: sum_average {
    type: sum
    value_format_name: usd
    sql: ${price} ;;
    filters: {
      field: rating
      value: "AVERAGE"
    }
  }
  measure: sum_excellent {
    type: sum
    value_format_name: usd
    sql: ${price} ;;
    filters: {
      field: rating
      value: "EXCELLENT"
    }
  }
  measure: avg_price {
    type: average
    value_format_name: usd
    sql: ${price} ;;
  }
  measure: count {
    type: count
    drill_fields: []
  }
  measure: new_review {
    type: sum
    sql: ${review} ;;
  }

}
