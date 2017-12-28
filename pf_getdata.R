pal_data <- read.csv("palmobile.csv",header = T,sep = ",",fileEncoding = "BIG5",stringsAsFactors = F)
pal_data <- pal_data[!is.na(pal_data$id),]

saveRDS(pal_data,"pal_data.rds")

####start####
pal_data <- readRDS("pal_data.rds")

pal_data$fate1 <- pal_data$id[match(pal_data$fate1,pal_data$name)]
pal_data$fate2 <- pal_data$id[match(pal_data$fate2,pal_data$name)]
pal_data$fate3 <- pal_data$id[match(pal_data$fate3,pal_data$name)]
pal_data$fate4 <- pal_data$id[match(pal_data$fate4,pal_data$name)]
pal_data$fate5 <- pal_data$id[match(pal_data$fate5,pal_data$name)]
pal_data$fate6 <- pal_data$id[match(pal_data$fate6,pal_data$name)]


fates <- c("fate1","fate2","fate3","fate4","fate5","fate6")
i <- 3
j <- 15
cat(i,"-",j,"from",pal_data$name[i],"to",pal_data$name[j],"\n")


which(pal_data[i,fates] == j)
