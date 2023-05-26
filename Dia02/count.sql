-- Databricks notebook source
select count(*), --linhas não nulas
       count(1),  --msm coisa de cima
       count(idPedido) --linhas não nulas da colunda idPedido
from silver.pizza_query.pedido

-- COMMAND ----------

select count(*)
       
from silver.pizza_query.pedido

where flKetchup is not null

-- COMMAND ----------

select descUF,
      count(*) AS qtdePedidos
       
from silver.pizza_query.pedido

where descUF != 'São Paulo'

group by descUF
having qtdePedidos >= 75

order by qtdePedidos desc

limit 5

-- COMMAND ----------

select *
from silver.pizza_query.produto
where descItem LIKE 'suco%'

-- COMMAND ----------

select descUF,
      flKetchup,
      count(*) 
       
from silver.pizza_query.pedido

where descUF != 'São Paulo'

group by descUF, flKetchup


order by descUF, flKetchup


