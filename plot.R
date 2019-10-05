library(xts)         # our favorite time series
library(ggplot2)     # artsy plotting
library(timeDate)    # for our prediction at the end
library(readxl)
library(scales)

stock = read_xlsx("股市.xlsx")
date_stock = do.call(c,stock[1])
stock = matrix(unlist(stock), ncol=6, nrow=224)

stock = data.frame( Year = as.Date(date_stock),
                    SSE = stock[,2],
                    SP500 = stock[,3],
                    Nikkei225 = stock[,4],
                    HSI = stock[,5],
                    ASX200 = stock[,6])

gfc <- data.frame(gfcstart = as.Date("2007-1-1"), 
                  gfcend = as.Date("2009-12-31"))
gfcafter <- data.frame(after = as.Date("2010-1-1"),
                       end = as.Date("2019-8-13"))

ggplot() + 
  ggtitle("Market Index") +
  geom_line(data = stock, aes(x = Year, y = SSE, colour="SSE Composite Index")) + 
  geom_line(data = stock, aes(x = Year, y = SP500, colour="S&P 500 Index")) + 
  geom_line(data = stock, aes(x = Year, y = Nikkei225, colour="Nikkei 225")) + 
  geom_line(data = stock, aes(x = Year, y = HSI, colour="Hang Seng Index")) + 
  geom_line(data = stock, aes(x = Year, y = ASX200, colour="S&P/ASX 200")) + 
  theme_bw() +
  ylab("Index") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Lines", values=c("SSE Composite Index"="blue",
                                             "S&P 500 Index"="#33FFF6",
                                             "Nikkei 225"="green",
                                             "Hang Seng Index"="red",
                                             "S&P/ASX 200"="#FF9F33"))

bond = read_xlsx("债券.xlsx")
date_bond = do.call(c,bond[1])
bond = matrix(unlist(bond), ncol=8)

bond = data.frame( Year = as.Date(date_bond),
                   mo1 = bond[,2],
                   mo3 = bond[,3],
                   mo6 = bond[,4],
                   yr1 = bond[,5],
                   yr5 = bond[,6],
                   yr10 = bond[,7],
                   yr20 = bond[,8])

ggplot() + 
  ggtitle("US Treasuary Yield Curve") +
  geom_line(data = bond, aes(x = Year, y = mo3, colour="3-month")) + 
  geom_line(data = bond, aes(x = Year, y = mo6, colour="6-month")) + 
  theme_bw() +
  ylab("Yield(%)") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Maturity", values=c("3-month"="blue",library(xts)         # our favorite time series
library(ggplot2)     # artsy plotting
library(timeDate)    # for our prediction at the end
library(readxl)
library(scales)

stock = read_xlsx("股市.xlsx")
date_stock = do.call(c,stock[1])
stock = matrix(unlist(stock), ncol=6, nrow=224)

stock = data.frame( Year = as.Date(date_stock),
                    SSE = stock[,2],
                    SP500 = stock[,3],
                    Nikkei225 = stock[,4],
                    HSI = stock[,5],
                    ASX200 = stock[,6])

gfc <- data.frame(gfcstart = as.Date("2007-1-1"), 
                  gfcend = as.Date("2009-12-31"))
gfcafter <- data.frame(after = as.Date("2010-1-1"),
                       end = as.Date("2019-8-13"))

ggplot() + 
  ggtitle("Market Index") +
  geom_line(data = stock, aes(x = Year, y = SSE, colour="SSE Composite Index")) + 
  geom_line(data = stock, aes(x = Year, y = SP500, colour="S&P 500 Index")) + 
  geom_line(data = stock, aes(x = Year, y = Nikkei225, colour="Nikkei 225")) + 
  geom_line(data = stock, aes(x = Year, y = HSI, colour="Hang Seng Index")) + 
  geom_line(data = stock, aes(x = Year, y = ASX200, colour="S&P/ASX 200")) + 
  theme_bw() +
  ylab("Index") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Lines", values=c("SSE Composite Index"="blue",
                                             "S&P 500 Index"="#33FFF6",
                                             "Nikkei 225"="green",
                                             "Hang Seng Index"="red",
                                             "S&P/ASX 200"="#FF9F33"))

bond = read_xlsx("债券.xlsx")
date_bond = do.call(c,bond[1])
bond = matrix(unlist(bond), ncol=8)

bond = data.frame( Year = as.Date(date_bond),
                   mo1 = bond[,2],
                   mo3 = bond[,3],
                   mo6 = bond[,4],
                   yr1 = bond[,5],
                   yr5 = bond[,6],
                   yr10 = bond[,7],
                   yr20 = bond[,8])

ggplot() + 
  ggtitle("US Treasury Yield Curve") +
  geom_line(data = bond, aes(x = Year, y = mo3, colour="3-month")) + 
  geom_line(data = bond, aes(x = Year, y = mo6, colour="6-month")) + 
  theme_bw() +
  ylab("Yield(%)") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Maturity", values=c("3-month"="blue",
                                                "6-month"="orange"))

ggplot() + 
  ggtitle("US Treasury Yield Curve") +
  geom_line(data = bond, aes(x = Year, y = mo3, colour="3-month")) + 
  geom_line(data = bond, aes(x = Year, y = yr10, colour="10-year")) + 
  theme_bw() +
  ylab("Yield(%)") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Maturity", values=c("3-month"="blue",
                                                "10-year"="orange"))

ggplot() + 
  ggtitle("US Treasury Yield Curve") +
  geom_line(data = bond, aes(x = Year, y = yr1, colour="1-year")) + 
  geom_line(data = bond, aes(x = Year, y = yr5, colour="5-year")) + 
  geom_line(data = bond, aes(x = Year, y = yr10, colour="10-year")) + 
  geom_line(data = bond, aes(x = Year, y = yr20, colour="20-year")) + 
  theme_bw() +
  ylab("Yield(%)") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Maturity", values=c("1-year" = "black",
                                                "5-year" = "red",
                                                "10-year" = "blue",
                                                "20-year" = "orange"))

read = function(x) {
  data = read_xlsx(x)
  date = do.call(c,data[1])
  data = matrix(unlist(data), ncol = 2)
  return( data.frame( Year = as.Date(date), currency = as.double(data[,2]) ) )
}

AUDCNY = read("AUDCNY.xlsx")
AUDUSD = read("AUDUSD.xlsx")
AUDJPY = read("AUDJPY.xlsx")
AUDHKD = read("AUDHKD.xlsx")

XAUAUD = read("XAU AUD.xlsx")
XAUCNY = read("XAU CNY.xlsx")
XAUUSD = read("XAU USD.xlsx")
XAUJPY = read("XAU JPY.xlsx")
XAUHKD = read("XAU HKD.xlsx")

plt = function(data,title) {
  print(ggplot() + 
          ggtitle(title) +
          geom_line(data = data, aes(x = Year, y = currency),color="blue") + 
          theme_bw() +
          ylab("Exchange Rate") +
          geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
          geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
          scale_x_date(breaks = pretty_breaks(10))
  )
}

plt(AUDCNY, "AUD-CNY Exchange Rate")
plt(AUDUSD, "AUD-USD Exchange Rate")
plt(AUDJPY, "AUD-JPY Exchange Rate")
plt(AUDHKD, "AUD-HKD Exchange Rate")
plt(XAUAUD, "XAU-AUD Exchange Rate")
plt(XAUCNY, "XAU-CNY Exchange Rate")
plt(XAUUSD, "XAU-USD Exchange Rate")
plt(XAUJPY, "XAU-JPY Exchange Rate")
plt(XAUHKD, "XAU-HKD Exchange Rate")

ggplot() + 
  ggtitle("Market Index") +
  geom_line(data = stock, aes(x = Year, y = SSE, colour="SSE Composite Index")) + 
  geom_line(data = stock, aes(x = Year, y = SP500, colour="S&P 500 Index")) + 
  geom_line(data = stock, aes(x = Year, y = Nikkei225, colour="Nikkei 225")) + 
  geom_line(data = stock, aes(x = Year, y = HSI, colour="Hang Seng Index")) + 
  geom_line(data = stock, aes(x = Year, y = ASX200, colour="S&P/ASX 200")) + 
  theme_bw() +
  ylab("Index") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Lines", values=c("SSE Composite Index"="blue",
                                             "S&P 500 Index"="#33FFF6",
                                             "Nikkei 225"="green",
                                             "Hang Seng Index"="red",
                                             "S&P/ASX 200"="#FF9F33"))

stock = read_xlsx("historical data.xlsx")
date_stock = do.call(c,stock[1])
stock = matrix(unlist(stock), ncol=6)

stock = data.frame( Year = as.Date(date_stock),
                    SSE = stock[,2],
                    SP500 = stock[,3],
                    Nikkei225 = stock[,4],
                    HSI = stock[,5],
                    ASX200 = stock[,6])

ggplot() + 
  ggtitle("Market Return") +
  geom_line(data = stock, aes(x = Year, y = SSE, colour="SSE Composite Index")) + 
  geom_line(data = stock, aes(x = Year, y = SP500, colour="S&P 500 Index")) + 
  geom_line(data = stock, aes(x = Year, y = Nikkei225, colour="Nikkei 225")) + 
  geom_line(data = stock, aes(x = Year, y = HSI, colour="Hang Seng Index")) + 
  geom_line(data = stock, aes(x = Year, y = ASX200, colour="S&P/ASX 200")) + 
  theme_bw() +
  ylab("Return(%)") +
  geom_rect(data = gfc, aes(xmin = gfcstart, xmax = gfcend, ymin = -Inf, ymax = Inf), alpha = 0.2) +
  geom_rect(data = gfcafter, aes(xmin = after, xmax = end, ymin = -Inf, ymax = Inf), alpha = 0.1) +
  scale_x_date(breaks = pretty_breaks(10)) +
  scale_colour_manual(name="Lines", values=c("SSE Composite Index"="blue",
                                             "S&P 500 Index"="#33FFF6",
                                             "Nikkei 225"="green",
                                             "Hang Seng Index"="red",
                                             "S&P/ASX 200"="#FF9F33"))