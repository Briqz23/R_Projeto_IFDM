# CM3044 - Encontro 03 - Operações lógicas e scripts
# EDIÇÃO PRESENCIAL - 1o SEMESTRE DE 2022
# EXERCÍCIOS "INSPIRADOS" NO MATERIAL TEÓRICO

# 1) Criação de sequências
# a) Sequência "básica", de 1 a 10
s1 <- 1:10
  
# b) De 2 a 12, com passo = 3
s2 <- seq(from = 2,to = 12,by = 3)

# c) De 2 a 12, com 5 valores
s3 <- seq(from = 2,to = 12,length.out = 5)


# ============================================================================ #
# 2) Acesso, via indexação básica
V <- 10*(1:7)   # V = [ 10 20 30 40 50 60 70 ]

# a) Acesso ao 5o valor
V[5]

# b) Acesso do 2o até o 6o valor
V[2:6]

# c) Acesso (apenas) do 3o e do 5o valor
V[c(3,5)]


# ============================================================================ #
# 3) Indexação avançada: acesso com exclusão
V[-5]				# Acesso com exclusão do 5o valor
V[-(2:6)]   # Acesso com exclusão de faixa
V[-c(3,5)]  # Acesso com exclusão de 2 valores


# ============================================================================ #
# 4) Inserção de valores adicionais
# a) Comprimento atual do vetor
length(V)

# b) Inserção logo após o último valor
V[length(V)+1] <- 88   # Completar!
print(V)    # Exibe o vetor

# c) Inserção em 3 posições após a última
V[length(V)+3] <- 99
print(V)


# ============================================================================ #
# 5) Operações de seleção condicional em vetores

V <- 10*(1:10)  # V = [ 10 20 30 40 50 60 70 80 90 100 ]

#     OPERADORES VÁLIDOS EM R    #
# ------------------------------ #
# Símbolo    Operação
# ------------------------------ #
# <, <=      Menor, menor ou igual
# >, >=      Maior, Maior ou igual
# ==         Igual
# !=         Diferente
# &          E
# |          OU
# !          Negação lógica
# ------------------------------ #

# a) Escreva uma condição que selecione os elementos de V que sejam
# maiores que 30 e menores ou iguais a 80. Armazene o resultado do
# teste em um vetor chamado "COND"
COND <- V>30 & V<=80
  
# b) Use o vetor "COND" para indexar o vetor "V", armazenando o
# resultado em "R1"
R1 <- V[COND]
  
# c) Escreva expressões que selecionem e armazenem elementos do vetor V:
# c1) Em "R2", valores iguais a 40 ou maiores que 80
R2 <- V[V==40 | V > 80]
  
# c2) Em "R3", valores maiores que 40, exceto o valor 70
R3 <- V[V >40 & V!=70]
  
# c3) Em "R4", valores negativos
R4 <- V [V<0]
  
  
# ============================================================================ #
# 6) Remoção de elementos de um vetor, segundo um critério
# Atribuições de valores
A <- 10*(1:8)  # A = [ 10 20 30 40 50 60 70 80 ]
B <- 20*(1:8)  # B = [ 20 40 60 80 100 120 140 160 ]

# a) ELIMINE do vetor A todos os valores abaixo de 30
A <- A[!(A<30)]
  
# b) MANTENHA no vetor B somente os valores entre 80 e 120
B <- B [B>=80 & B <=120]
  
  
# ============================================================================ #
# 7) Exemplo de contagem de valores ausentes (função sum) e
# sua eliminação (função is.na) + contagem seletiva
V <- c(1,2,NA,NA,5:8)   # Vetor = [ 1 2 NA NA 5 6 7 8 ]

is.na(V)        # Teste lógico para detecção
sum(is.na(V))   # Contagem de valores ausentes

# Ajuste de (algumas) funções de cálculo para ignorar NA's
mean(V)  # Média dos valores do vetor (funciona?)
mean(V,na.rm = TRUE)  # Média dos valores (agora funciona!)

# a) Elimine os valores ausentes do vetor V. Dica: use a
# estratégia "V <- V[!(condição para sair)]"
V <-  V[!is.na(V)]
print(V)

# b) Repita a operação anterior, usando a função "na.omit"
V <- c(1,2,NA,NA,5:8)   # Vetor = [ 1 2 NA NA 5 6 7 8 ]
V <- na.omit(V)
print(V)

# =============================== FIM DO SCRIPT ============================== #