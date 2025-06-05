- dashboard: emp_dashboard_new
  title: Employee Dashboard New
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: amrKcErYLorMeIwqjfke75
  elements:
  - title: Position of Employee
    name: Position of Employee
    model: tableautolooker1
    explore: employee
    type: looker_grid
    fields: [employee.position, employee.first_name]
    sorts: [employee.position]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      employee.first_name: Name
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 6
  - title: Salary of employee
    name: Salary of employee
    model: tableautolooker1
    explore: employee
    type: looker_column
    fields: [employee.first_name, employee_hike.new_salary]
    sorts: [employee_hike.new_salary desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    defaults_version: 1
    row: 0
    col: 7
    width: 9
    height: 6
