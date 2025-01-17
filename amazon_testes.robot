*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***


Caso de Teste 01 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Dado que estou na home page da site Amazon.com.br
    Quando adicionar o produto "Xbox Series S" no carrinho
    Então o produto "Xbox Series S" deve ser mostrado no carrinho
 
Caso de Teste 02 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Dado que estou na home page da site Amazon.com.br
    E existe o produto "Xbox Series S" no carrinho
    Quando remover o produto "Xbox Series S" do carrinho
    Então o carrinho deve ficar vazio