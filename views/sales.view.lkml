view: sales {
  sql_table_name: `cg-acis-ind-sandbox.demo_dataset.sales` ;;

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.OrderID ;;
  }
  dimension: price_per_unit {
    type: number
    sql: ${TABLE}.PricePerUnit ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.TotalPrice ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
  measure: Quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
  }
}
