connection: "bigquery_verizon"

include: "/views/*.view.lkml"                # include all views in the views/

explore: verizon {

}
explore: verizon_emp_dep {}
explore: sales {
  join: orders {
    sql_on: ${sales.order_id} = ${orders.order_id} ;;
    relationship: many_to_one
  }
}
