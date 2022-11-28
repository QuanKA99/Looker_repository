view: predictions_2022_10_26_t19_38_26_301_z_768 {
  sql_table_name: `rental_dataset.predictions_2022_10_26T19_38_26_301Z_768`
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

  dimension: predicted_accept__classes {
    hidden: yes
    sql: ${TABLE}.predicted_Accept.classes ;;
    group_label: "Predicted Accept"
    group_item_label: "Classes"
  }

  dimension: predicted_accept__scores {
    hidden: yes
    sql: ${TABLE}.predicted_Accept.scores ;;
    group_label: "Predicted Accept"
    group_item_label: "Scores"
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

view: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__scores {
  dimension: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__scores {
    type: number
    sql: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__scores ;;
  }
}

view: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__classes {
  dimension: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__classes {
    type: string
    sql: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__classes ;;
  }
}

view: predictions_2022_10_26_t19_38_26_301_z_768__explanation__attributions {
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
