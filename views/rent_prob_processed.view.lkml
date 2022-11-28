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

  measure: count {
    type: count
    drill_fields: []
  }
}
