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
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.TotalPrice ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
