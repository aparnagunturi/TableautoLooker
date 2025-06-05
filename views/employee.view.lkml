view: employee {
  sql_table_name: `cg-acis-ind-sandbox.emp.employee` ;;

  dimension: employee_id {
    label: "Employee ID"
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: birth {
    type: date
    label: "Birth Date"
    sql: ${TABLE}.BirthDate ;;
  }
  dimension: first_name {
    label: "First Name"
    type: string
    sql: ${TABLE}.FirstName ;;
  }
  dimension: hire {
    label: "Hire Date"
    type: date
    sql: ${TABLE}.HireDate ;;
  }
  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}.LastName ;;
  }
  dimension: position {
    label: "Position"
    type: string
    sql: ${TABLE}.Position ;;
  }

}
