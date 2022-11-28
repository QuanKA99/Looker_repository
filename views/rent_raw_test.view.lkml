view: rent_raw_test {
  sql_table_name: `rental_dataset.RentRaw_test`
    ;;

  dimension: built_up_size {
    type: number
    sql: ${TABLE}.BuiltUpSize ;;
  }

  dimension: furnishing {
    type: string
    sql: ${TABLE}.Furnishing ;;
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

  dimension: property_address {
    type: string
    sql: ${TABLE}.PropertyAddress ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.PropertyType ;;
  }

  dimension: rental_per_mth {
    type: number
    sql: ${TABLE}.RentalPerMth ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
