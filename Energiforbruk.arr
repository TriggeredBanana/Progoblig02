use context essentials2021
import math as M
import statistics as S
import lists as L

include gdrive-sheets
include data-source
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

consumer-data =
  load-table: Komponent :: String, Energi :: String
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize Energi using string-sanitizer
end


#Variabler for bil
distance-travelled-per-day = 70
distance-per-unit-of-fuel = 10
energy-per-unit-of-fuel = 2

#Funksjon for energy-per-day
energy-per-day = num-round(distance-travelled-per-day 
    / distance-per-unit-of-fuel) 
  * energy-per-unit-of-fuel

#Konverterer "Energi" fra bokstaver til tall
fun energy-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day
  end
  
where:
  energy-to-number("") is energy-per-day
  energy-to-number("48") is 48
end

transform-consumer-data = 
  transform-column(consumer-data, "Energi", energy-to-number)

#Summerer kolonner inn i en variabel
sumcolumns =
  sum(transform-consumer-data, "Energi")


sumdata = table: Komponent :: String, Energi :: Number
  row: "Sum energiforbruk", sumcolumns
end

#Lagrer barchart funksjon i variabel
barchart = bar-chart(transform-consumer-data, "Komponent", "Energi")

#Legger til siste rad og printer ut
barchart
rowcomplete = get-row(sumdata, 0)
add-row(transform-consumer-data, rowcomplete)