# Lista de Exercícios]
# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("D:/FCDados/[04] - Graficos/[03] - Projetos/")
getwd()

# Exercicio 1 - Crie uma função que receba os dois vetores abaixo como parâmetro, 
# converta-os em um dataframe e imprima no console
vec1 <- (10:13)
vec2 <- c("a", "b", "c","d")

df <- function (vetor1, vetor2){
  df2 <- data.frame(cbind(vetor1, vetor2))
  print(df2)
}

df(vec1, vec2)
class(df(vec1, vec2))


# Exercicio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com 
# números inteiros e calcule a média de cada linha
matriz <- matrix(1:16, nrow = 4, ncol = 4)
matriz
apply(matriz, 1, mean)


# Exercicio 3 - Considere o dataframe abaixo. 
# Calcule a média por disciplina e depois calcule a média de apenas uma disciplina
escola <- data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matematica = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Quimica = c(76, 56, 89, 90, 100, 87))
escola
apply(escola[2:4], 2 , mean)

# Exercicio 4 - Cria uma lista com 3 elementos, todos numéricos 
# e calcule a soma de todos os elementos da lista
lista <- list(1,2,3)
class(lista)
lista

sum(sapply(lista, sum))

sum(unlist(lista))

do.call(sum, lista)


# Exercicio 5 - Transforme a lista anterior um vetor
x <- unlist(lista)
x

# Exercicio 6 - Considere a string abaixo. Substitua a palavra "textos" por "frases"
str <- c("Expressoes", "regulares", "em linguagem R", 
         "permitem a busca de padroes", "e exploracao de textos",
         "podemos buscar padroes em digitos",
         "como por exemplo",
         "10992451280")

sub("texto", "frases", str)
?gsub
# Exercicio 7 - Usando o dataset mtcars, crie um grafico com ggplot do tipo 
# scatter plot. Use as colunas disp e mpg nos eixos x e y respectivamente
View(mtcars)
library(ggplot2)

ggplot(mtcars, aes(x = disp, y = mpg)) + geom_point(color = "gold4", shape = 21, size = 5)
colors()
?geom_point

# Exercicio 8 - Considere a matriz abaixo.
# Crie um bar plot que represente os dados em barras individuais.
mat1 <- matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3, byrow = T)
mat1

barplot(mat1, beside = TRUE, ylab = "Quantidade", xlab = "V", legend.text = TRUE)
?barplot

# Exercício 9 - Qual o erro do código abaixo?
data(diamonds)
View(diamonds)
ggplot(data = diamonds, aes(x = price, group = cut, fill = cut)) + 
  geom_density(adjust = 1.5)


# Exercício 10 - Qual o erro do código abaixo?
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl")


