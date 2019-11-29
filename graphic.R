cars <- array(1:12, dim = c(6, 2, 1))
head(cars)
par(mar=c(2,2,2,2))
layout(mat = matrix(c(1,1,2,3), 2, byrow = T))
plot(cars, pch=16, col=2:3)

unlist(par("fg", "bg"))
par(bg="beige", fg="darkblue")
plot(1:25, xlab="", ylab = "", type = "n")
text(1:25, 25, labels = LETTERS[1:25], col="hotpink")
text(seq(1,10,2), 22, labels = letters[1:5], cex = 1:5)
text(seq(1,10,2), 19, labels = LETTERS[1:5], cex = 1:5)

fname<- "Font param"
for (i in 5:1) {
  par(font=i);
  text(1,16-i, labels = paste(fname, i), adj = 0, cex = 1.5, col=(i+1))
}

par(col="darkgreen")
points(17.5, 5, pch="A", col="brown")
text(17.5, 10, "srt=0", srt=0, cex = 1.5)
