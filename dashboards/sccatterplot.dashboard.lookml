- dashboard: sccatterplot
  title: Sccatterplot
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: SccatterPlot
      title: Distribution between house prices and built up size
      model: wuanka
      explore: rent_raw_processed
      type: looker_scatter
      fields: [rent_raw_processed.rental_per_mth_after, rent_raw_processed.built_up_size]
      filters:
        rent_raw_processed.rental_per_mth_after: ">5000"
        rent_raw_processed.built_up_size: "<10000"
      sorts: [rent_raw_processed.rental_per_mth_after desc]
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
      stacking: normal
      limit_displayed_rows: false
      legend_position: center
      point_style: circle
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      show_null_points: true
      series_types: {}
      defaults_version: 1
      interpolation: linear
