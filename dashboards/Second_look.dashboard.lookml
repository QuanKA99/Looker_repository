- dashboard: second_look
  title: Second Look
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1669714495
      title: Untitled Visualization
      model: wuanka
      explore: rent_prob_processed
      type: looker_column
      fields: [rent_prob_processed.price, rent_prob_processed.region, rent_prob_processed.new_review]
      pivots: [rent_prob_processed.region]
      sorts: [rent_prob_processed.region, rent_prob_processed.price desc]
      limit: 500
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      series_types: {}
