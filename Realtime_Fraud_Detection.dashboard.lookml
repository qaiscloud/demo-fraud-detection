---
- dashboard: realtime_fraud_overview_dashboard
  title: Real-time Fraud Overview Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 1yv5nE5oCctj0mMkuRsvFq
  elements:
  - title: Real-time Fraud Overview Dashboard
    name: Real-time Fraud Overview Dashboard
    model: fraud_detection
    explore: transactions
    type: single_value
    fields: [transactions.total_amount]
    filters:
      transactions.is_fraudulent: 'Yes'
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Asia/Taipei
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Fraud Type
    name: Fraud Type
    model: fraud_detection
    explore: transactions
    type: looker_bar
    fields: [transactions.fraud_type, transactions.count]
    sorts: [transactions.count desc 0]
    limit: 500
    column_limit: 50
    filter_expression: (matches_filter(${transactions.fraud_type}, `"ACCOUNT_TAKEOVER","CARD_NOT_PRESENT_FRAUD","COUNTERFEIT_CARD","FRIENDLY_FRAUD","STOLEN_CARD"`))
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
    color_application:
      collection_id: cm-cloor-system
      palette_id: cm-cloor-system-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    series_labels: {}
    hidden_pivots: {}
    defaults_version: 1
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    interpolation: linear
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Total Transaction
    name: Total Transaction
    model: fraud_detection
    explore: transactions
    type: single_value
    fields: [transactions.total_amount]
    sorts: [transactions.total_amount desc 0]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: Asia/Taipei
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Fraud Percentage
    name: Fraud Percentage
    model: fraud_detection
    explore: transactions
    type: single_value
    fields: [transactions.fraud_rate]
    limit: 500
    column_limit: 50
    query_timezone: Asia/Taipei
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Total Fraud Transaction
    name: Total Fraud Transaction
    model: fraud_detection
    explore: transactions
    type: single_value
    fields: [transactions.count]
    filters:
      transactions.is_fraudulent: 'Yes'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Top 10 Card Fraud Profile
    name: Top 10 Card Fraud Profile
    model: fraud_detection
    explore: transactions
    type: looker_grid
    fields: [card_profiles.card_id, transactions.total_amount, transactions.count]
    filters:
      transactions.is_fraudulent: 'Yes'
      card_profiles.card_id: "-EMPTY"
    sorts: [transactions.total_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      args:
      - transactions.total_amount
      based_on: transactions.total_amount
      calculation_type: rank_of_column
      category: table_calculation
      label: Rank of Transactions Total Amount
      source_field: transactions.total_amount
      table_calculation: rank_of_transactions_total_amount
      value_format:
      value_format_name:
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [rank_of_transactions_total_amount]
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Transaction by Country
    name: Transaction by Country
    model: fraud_detection
    explore: transactions
    type: looker_bar
    fields: [merchants.merchant_country, transactions.count, transactions.fraud_rate]
    filters:
      merchants.merchant_country: "-EMPTY"
    sorts: [merchants.merchant_country]
    limit: 10
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Fraud Transaction Percantage in 2024
    name: Fraud Transaction Percantage in 2024
    model: fraud_detection
    explore: transactions
    type: looker_line
    fields: [transactions.transaction_timestamp_month, transactions.count, transactions.fraud_rate]
    fill_fields: [transactions.transaction_timestamp_month]
    filters:
      transactions.transaction_timestamp_year: '2024'
    sorts: [transactions.transaction_timestamp_month desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    hidden_fields: [transactions.count]
    defaults_version: 1
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Fraud Transaction Hour of Day
    name: Fraud Transaction Hour of Day
    model: fraud_detection
    explore: transactions
    type: looker_line
    fields: [transactions.fraud_rate, transactions.count, transactions.transaction_timestamp_hour_of_day]
    fill_fields: [transactions.transaction_timestamp_hour_of_day]
    sorts: [transactions.fraud_rate desc 0]
    limit: 10
    column_limit: 50
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
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    hidden_fields: [transactions.count]
    defaults_version: 1
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Test Fraud
    name: Test Fraud
    model: fraud_detection
    explore: transactions
    type: looker_column
    fields: [transactions.is_fraudulent, transactions.count]
    fill_fields: [transactions.is_fraudulent]
    sorts: [transactions.count desc 0]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 0
    width: 8
    height: 6
