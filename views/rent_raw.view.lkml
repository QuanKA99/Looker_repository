view: rent_raw {
  sql_table_name: `rental_dataset.RentRaw`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: built_up_size {
    type: number
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
    drill_fields: [id, property_name]
  }
}
