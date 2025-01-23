with 
 clientes as (
    select
    cast(cod_cliente  as string) as codigo_cliente
    , primeiro_nome || ' ' || ultimo_nome as nome_cliente 
    , cast(email as string) as email
    , cast(tipo_cliente as string) as tipo
    , cast(data_inclusao as TIMESTAMP) as data_inicio
    , cast(cpfcnpj as string) as documento
    from {{source('desafio_banvic','clientes')}}
) 

select *
from clientes