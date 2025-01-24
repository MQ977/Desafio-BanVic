with 
 agencias as (
    select
    cast(cod_agencia  as string) as codigo_agencia
    , cast(nome as string) as nome_agencia
    , cast(endereco as string) as endereco_ag
    , cast(cidade as string) as cidade_ag
    , cast(uf as string) as estado
    , cast(data_abertura as string) as data_abertura
    , cast(tipo_agencia as string) as tipo
    from {{source('desafio_banvic','agencias')}}
) 

select *
from agencias