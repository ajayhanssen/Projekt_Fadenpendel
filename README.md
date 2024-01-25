# Projekt_Fadenpendel  
Haupt-Live-Skript ist "pendel_master.mlx"  
## Datei-Übersicht  
*"abweichung_periodendauer(_calc).m" sind Funktionen zur Berechung der Aufgaben betreffend der Periodendauerdifferenz zwischen exakter und genäherter Lsg.  
*"erdbeschl_min.m" enthält die Funktion zur Berechnung der Schwerbeschleunigung aus den Messdaten  
*"import_coordinates.py" ist das Python-File das zum Einlesen der Koordinaten und baken der Keyframes in Blender geschrieben wurde  
*"maximumsuche.m" ist die Abbruchbedingung nach einer Periode, verwendet mit odeset()  
*"pendel.m" enthält die DGL der exakten Lösung, die mit ode45 gelöst wird  
*"pendel_anim_master.m" enthält die Funktionalität zum animieren in Matlab mithilfe einer for-Schleife  
*"pendel_g_var.m" entspricht "pendel.m", mit g als Übergabeparameter  
*"pendel_kleine_a.m" enthält die DGL für die genäherte Lösung  
*"pendeldaten.csv" sind die zur Verfügung gestellten Messdaten  
*"sekundenpendel_exakt" enthält die Funktion zur Berechung der nötigen Länge des Pendels bei gegebener Anfangsauslenkung zum Erreichen eines Sekundenpendels  
*"simulation.mp4" ist die gerenderte Visualisierung  
*"simulation_pendulum.blend" ist das erstellte .blend-file, in dem die 3D-Visualisierung realisiert wurde
