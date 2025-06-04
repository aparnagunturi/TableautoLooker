- dashboard: birthday
  title: Birthday
- name: add_a_unique_name_1749018795
  title: Untitled Visualization
  model: tableautolooker1
  explore: employee
  type: looker_grid
  fields: [employee.employee_id, employee.birth_year, employee.birth_date]
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
  minimum_column_width: 75
  show_sql_query_menu_options: false
  show_totals: true
  show_row_totals: true
  truncate_header: false
  series_labels:
    employee.birth_year: Year
  series_column_widths:
    employee.employee_id: 164.26
    employee.birth_year: 159
  defaults_version: 1
