####q1####
dados1 = read.csv('ex1.csv')
ggplot(dados1, aes(tempo)) + geom_histogram()

a = mean(dados1$tempo)
pexp(300, 1/a)

pexp(400, 1/a) - pexp(200, 1/a)

qexp(0.7, 1/a)


dados1$px = dexp(dados1$tempo, 1/a)
ggplot(dados1, aes(tempo,px, fill='red')) + geom_histogram(aes(y = ..density..)) + geom_line()

####q2####
pbinom(24, 100, 0.3)
pbinom(75, 100, 0.7, lower.tail = F)

dbinom(70,100, 0.7)
dbinom(30,100, 0.3)

pbinom(19, 100, 0.3)
pbinom(80,100, 0.7, lower.tail = F)

sum(dbinom(1:19, 100, 0.3))

4000*0.3


x=0:100
px=dbinom(x,100,0.7)
dados=data.frame(x,px)
ggplot(dados,aes(x,px))+geom_col()+theme_minimal()

####q3####
dpois(15,20)

ppois(29,20) - ppois(20,20)
sum(dpois(21:29, 20))

1-ppois(449,20*24)

1-ppois(34,30)

x=0:40
px=dpois(x,20)
data=data.frame(x,px)
ggplot(data,aes(x,px))+geom_col()+theme_minimal()
####q4####
dados2 = read.csv('ex4.csv')
ggplot(dados2, aes(peso)) + geom_histogram()

b = mean(dados2$peso)
desvio = sd(dados2$peso)
1 - (pnorm(55, b, desvio) - pnorm(45,b,desvio))


qnorm(0.3,b,desvio)
qnorm(0.7,b,desvio)

dados2$py = dnorm(dados2$peso, b,desvio)
ggplot(dados2, aes(peso,py, fill='red')) + geom_histogram(aes(y = ..density..)) + geom_line(lwd=1.2)

