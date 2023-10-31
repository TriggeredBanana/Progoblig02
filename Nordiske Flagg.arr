use context essentials2021
# Norge
norsk-flagg =
  overlay-xy(rectangle(20, 160, "solid", "blue"), -70, 0,
    overlay-xy(rectangle(220, 20, "solid", "blue"), 0, -70,
      overlay-xy(rectangle(40, 160, "solid", "white"), -60, 0,
        overlay-xy(rectangle(220, 40, "solid", "white"), 0, -60,
          (rectangle(220, 160, "solid", "crimson"))))))

# Danmark
dansk-flagg =
  overlay-xy(rectangle(40, 280, "solid", "white"), -120, 0,
    overlay-xy(rectangle(370, 40, "solid", "white"), 0, -120,
      (rectangle(370, 280, "solid", "red"))))


# Sverige
svensk-flagg =
  overlay-xy(rectangle(20, 100, "solid", "yellow"), -50, 0,
    overlay-xy(rectangle(160, 20, "solid", "yellow"), 0, -40,
      (rectangle(160, 100, "solid", "blue"))))


# Finland
finsk-flagg =
  overlay-xy(rectangle(30, 110, "solid", "blue"), -50, 0,
    overlay-xy(rectangle(180, 30, "solid", "blue"), 0, -40,
      (rectangle(180, 110, "solid", "white"))))

# Island
islandsk-flagg =
  overlay-xy(rectangle(20, 180, "solid", "red"), -80, 0,
    overlay-xy(rectangle(250, 20, "solid", "red"), 0, -80,
      overlay-xy(rectangle(40, 180, "solid", "white"), -70, 0,
        overlay-xy(rectangle(250, 40, "solid", "white"), 0, -70,
          (rectangle(250, 180, "solid", "blue"))))))

# Færøyene
fo-flagg =
  overlay-xy(rectangle(20, 160, "solid", "red"), -70, 0,
    overlay-xy(rectangle(220, 20, "solid", "red"), 0, -70,
      overlay-xy(rectangle(40, 160, "solid", "blue"), -60, 0,
        overlay-xy(rectangle(220, 40, "solid", "blue"), 0, -60,
          (rectangle(220, 160, "solid", "white"))))))

#Input og feilmelding
flagg = "Færøyene"
feil = "Prøv å skriv inn en av følgende: Norge, Sverige, Danmark, Finland, Island, Færøyene"

#Print ut riktig flagg basert på brukerens input
if flagg == "Norge": norsk-flagg
else if flagg == "Danmark": dansk-flagg
else if flagg == "Sverige": svensk-flagg
else if flagg == "Finland": finsk-flagg
else if flagg == "Island": islandsk-flagg
else if flagg == "Færøyene": fo-flagg
else: feil
end