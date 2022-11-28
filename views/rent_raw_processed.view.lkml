view: rent_raw_processed {
  sql_table_name: `rental_dataset.RentRaw_Processed`
    ;;

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
}
