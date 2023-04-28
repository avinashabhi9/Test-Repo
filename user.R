library ("Rweka")

N = read.arff("super_sleepers.arff")

print(N)

cat("\n\n\n")

print(head(N,2))

dim(N)

names(N)

N["animal"]

N["avg_sleep_hours"]

max(N["avg_sleep_hours"])

min(avg_sleep_hours)


median(sort(avg_sleep_hours))

sd(avg_sleep_hours)

summary(N)

