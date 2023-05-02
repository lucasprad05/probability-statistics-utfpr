1/sum(1:10)
#Para a seguinte função, determine a constante k para que seja uma função de probabilidade de i,a váriavel aleatória discreta

#Questao 2
dbinom (0, 10, 0.3) #a
pbinom(0, 10, 0.3, lower.tail = F) #b no minimo 1 falher
pbinom(2, 10, 0.3, lower.tail = F) #c ao menos 3 falhem

qbinom(0.5, 50, 0.3)
50*0.3 #d se 50 componentes, quantos irão falhar em média

x = 0:10
px = dbinom(x, 10, 0.5)
dados = data.frame(x, px)
ggplot(dados, aes(x,px, fill='red')) + geom_col()


#Questao 3
dpois(4, 4) #a
ppois(5, 4, lower.tail = F) #b
ppois(80, 24*4, lower.tail = F) #c

#d
x = 0:50
px = dpois(x, 4)
dados2 = data.frame(x,px)
ggplot(dados2, aes(x, px)) + geom_col()


#Questao 4
#integral kx^4
#substituir por 1 0
# k/5 = 1
k = 5



#Questao 5
dados3 = read.csv(file= 'dadosex5.csv') #a
#modelo exponencial

z = mean(dados3$x) #b

pexp(2,1/z, lower.tail = F) #c
pexp(5, 1/z) #d
dados3$px = dexp(dados3$x, 1/z)
ggplot(dados3, aes(x)) + geom_histogram() 

ggplot(dados3, aes(x,px)) + geom_histogram(aes(y = ..density..)) + geom_line()#e




#Questao 6
dados4 = read.csv(file= 'dadosex6.csv') #a
ggplot(dados4, aes(x)) + geom_histogram()
#modelo normal

y = mean(dados4$x)
u = sd(dados4$x)

pnorm(25, y,u) - pnorm(15, y,u) #b

qnorm(0.2, y, u) #c


dados4$py = dnorm(dados4$x, y,u)
ggplot(dados4, aes(x,py, fill='red')) + geom_histogram(aes(y = ..density..), bins = 10) + geom_line(lwd=3)#e

