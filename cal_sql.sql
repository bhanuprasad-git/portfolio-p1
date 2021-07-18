## calculation

SELECT product_id,
        name,  quantity_in_stock,
       unit_price,
       quantity_in_stock * unit_price as total_price
       
   
FROM
    sql_store.products;
    
    
    select product_id,
                 name,
                 quantity_in_stoks * unit_price as total_price
         from sql_store.products