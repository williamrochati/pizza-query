-- Databricks notebook source
select *

from silver.pizza_query.pedido

where flKetchup = true
AND descUF = 'Rio de Janeiro'

-- COMMAND ----------


