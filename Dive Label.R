setwd('/cloud/project/data')

dive_labels <- readRDS("zc84_diveIds.rds")

setwd('/cloud/project/data/L1_edited/180753')

zc084 <- read_csv("180753-Series.csv")

merged <- cbind(zc084, dive_labels)

write.csv(merged, "Zc084_dive_labels.csv", row.names=TRUE)
