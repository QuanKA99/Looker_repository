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
          WHEN ${review} < 2 THEN "POOR"
          WHEN ${review} <4 AND ${review} >=2 THEN "AVERAGE"
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
  # measure: price_total {
  #   type: number
  #   value_format_name: percent_2
  #   sql: CASE
  #         WHEN ${review} = 'POOR' THEN (1.0 * ${sum_poor}/NULLIF(${total_price},0))
  #         WHEN ${review} = 'AVERAGE' THEN (1.0*${sum_average}/NULLIF(${total_price},0))
  #         WHEN ${review} = 'EXCELLENT' THEN (1.0*${sum_excellent}/NULLIF(${total_price},0))
  #         END;;
  # }
  measure: total_price_poor_percentage {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${sum_poor}/ NULLIF(${total_price},0) ;;
  }
  measure: total_price_average_percentage {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${sum_average}/ NULLIF(${total_price},0) ;;
  }
  measure: total_price_excellent_percentage {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${sum_excellent}/ NULLIF(${total_price},0) ;;
  }
  # dimension: percentage  {
  #   type: number
  #   value_format_name: percent_2
  #   sql: CASE
  #         WHEN ${review} = 'POOR' THEN ${total_price_poor_percentage}
  #         WHEN ${review} = 'AVERAGE' THEN ${total_price_average_percentage}
  #         WHEN ${review} = 'EXCELLENT' THEN ${total_price_excellent_percentage}
  #         END;;
  # }
  measure: count {
    type: count
    drill_fields: []
  }
  measure: new_review {
    type: sum
    sql: ${review} ;;
  }

}
