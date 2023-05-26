-- Databricks notebook source
--SELECIONE TODAS AS COLUNAS (*) DA tabela SILVER.PIZZA_QUERY.ITEM_PEDIDO
select *
from silver.pizza_query.item_pedido

-- COMMAND ----------

select descItem,
        vlPreco,
        21+21 as vl42
from silver.pizza_query.produto
