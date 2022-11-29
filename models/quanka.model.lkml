connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: quanka_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: quanka_default_datagroup

explore: rent_prob_test {}

explore: rent_raw_test {}

explore: rent_prob {}

explore: rent_prob_processed {}

explore: house_time {}

explore: rent_raw {}

explore: rent_raw_processed {}

explore: house_time_proceesed {}
explore: new_rent_raw {}
explore: predictions_2022_10_24_t18_59_24_350_z_628 {
  join: predictions_2022_10_24_t18_59_24_350_z_628__explanation__attributions {
    view_label: "Predictions 2022 10 24 T18 59 24 350 Z 628: Explanation Attributions"
    sql: LEFT JOIN UNNEST(${predictions_2022_10_24_t18_59_24_350_z_628.explanation__attributions}) as predictions_2022_10_24_t18_59_24_350_z_628__explanation__attributions ;;
    relationship: one_to_many
  }
}

explore: predictions_2022_10_26_t19_38_26_301_z_768 {
  join: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__scores {
    view_label: "Predictions 2022 10 26 T19 38 26 301 Z 768: Predicted Accept Scores"
    sql: LEFT JOIN UNNEST(${predictions_2022_10_26_t19_38_26_301_z_768.predicted_accept__scores}) as predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__scores ;;
    relationship: one_to_many
  }

  join: predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__classes {
    view_label: "Predictions 2022 10 26 T19 38 26 301 Z 768: Predicted Accept Classes"
    sql: LEFT JOIN UNNEST(${predictions_2022_10_26_t19_38_26_301_z_768.predicted_accept__classes}) as predictions_2022_10_26_t19_38_26_301_z_768__predicted_accept__classes ;;
    relationship: one_to_many
  }

  join: predictions_2022_10_26_t19_38_26_301_z_768__explanation__attributions {
    view_label: "Predictions 2022 10 26 T19 38 26 301 Z 768: Explanation Attributions"
    sql: LEFT JOIN UNNEST(${predictions_2022_10_26_t19_38_26_301_z_768.explanation__attributions}) as predictions_2022_10_26_t19_38_26_301_z_768__explanation__attributions ;;
    relationship: one_to_many
  }
}
