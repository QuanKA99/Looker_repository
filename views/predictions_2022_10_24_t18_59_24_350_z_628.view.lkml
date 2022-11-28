view: predictions_2022_10_24_t18_59_24_350_z_628 {
  sql_table_name: `rental_dataset.predictions_2022_10_24T18_59_24_350Z_628`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: apartment {
    type: string
    sql: ${TABLE}.Apartment ;;
  }

  dimension: beds {
    type: string
    sql: ${TABLE}.Beds ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: explanation__attributions {
    hidden: yes
    sql: ${TABLE}.explanation.attributions ;;
    group_label: "Explanation"
    group_item_label: "Attributions"
  }

  dimension: pic_quality {
    type: number
    sql: ${TABLE}.Pic_Quality ;;
  }

  dimension: predicted_accept__lower_bound {
    type: number
    sql: ${TABLE}.predicted_Accept.lower_bound ;;
    group_label: "Predicted Accept"
    group_item_label: "Lower Bound"
  }

  dimension: predicted_accept__upper_bound {
    type: number
    sql: ${TABLE}.predicted_Accept.upper_bound ;;
    group_label: "Predicted Accept"
    group_item_label: "Upper Bound"
  }

  dimension: predicted_accept__value {
    type: number
    sql: ${TABLE}.predicted_Accept.value ;;
    group_label: "Predicted Accept"
    group_item_label: "Value"
  }

  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: review {
    type: number
    sql: ${TABLE}.Review ;;
  }

  dimension: weekday {
    type: string
    sql: ${TABLE}.Weekday ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: predictions_2022_10_24_t18_59_24_350_z_628__explanation__attributions {
  dimension: feature_attributions__apartment {
    type: number
    sql: ${TABLE}.featureAttributions.Apartment ;;
    group_label: "Feature Attributions"
    group_item_label: "Apartment"
  }

  dimension: feature_attributions__beds {
    type: number
    sql: ${TABLE}.featureAttributions.Beds ;;
    group_label: "Feature Attributions"
    group_item_label: "Beds"
  }

  dimension: feature_attributions__date {
    type: number
    sql: ${TABLE}.featureAttributions.Date ;;
    group_label: "Feature Attributions"
    group_item_label: "Date"
  }

  dimension: feature_attributions__id {
    type: number
    sql: ${TABLE}.featureAttributions.ID ;;
    group_label: "Feature Attributions"
    group_item_label: "ID"
  }

  dimension: feature_attributions__pic_quality {
    type: number
    sql: ${TABLE}.featureAttributions.Pic_Quality ;;
    group_label: "Feature Attributions"
    group_item_label: "Pic Quality"
  }

  dimension: feature_attributions__price {
    type: number
    sql: ${TABLE}.featureAttributions.Price ;;
    group_label: "Feature Attributions"
    group_item_label: "Price"
  }

  dimension: feature_attributions__region {
    type: number
    sql: ${TABLE}.featureAttributions.Region ;;
    group_label: "Feature Attributions"
    group_item_label: "Region"
  }

  dimension: feature_attributions__review {
    type: number
    sql: ${TABLE}.featureAttributions.Review ;;
    group_label: "Feature Attributions"
    group_item_label: "Review"
  }

  dimension: feature_attributions__weekday {
    type: number
    sql: ${TABLE}.featureAttributions.Weekday ;;
    group_label: "Feature Attributions"
    group_item_label: "Weekday"
  }

  dimension: output_display_name {
    type: string
    sql: ${TABLE}.outputDisplayName ;;
  }
}
