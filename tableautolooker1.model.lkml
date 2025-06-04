connection: "bigquery_verizon"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
explore: employee {}
