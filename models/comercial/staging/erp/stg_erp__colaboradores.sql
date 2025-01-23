with 
 colaboradores as (
    select
    cast(cod_colaborador as int) as codigo_colaborador
    , primeiro_nome || ' ' || ultimo_nome as nome_colaborador 
    , cast(email as string) as email
    , cast(cpf as string) as documento
    , cast(data_nascimento as TIMESTAMP) as nascimento
    , cast(endereco as string) as endereco_colaborador
    , cast(cep as string) as cep
    
    from {{source('desafio_banvic','colaboradores')}}
) 

select *
from colaboradores