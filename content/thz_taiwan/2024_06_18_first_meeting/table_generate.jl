
using Dates

T1 =    ["Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Opening Remarks" 3;
          "Javed Iqbal" 1 "Investigation and fabrication of high-K and low-loss structural nanocomposites for THz wave" 0;
          " Speaker " 1 " " 0;
          "Prabir Garu" 1 "Design of SIW-fed endfire exponential tapered horn antenna for sub-THz communications" 0;

          "**Lunch**" 1 "40 Mins break" 2;
          "Pouya Torkaman" 1 "Harmonizing Nonlinearity in Channel: Forging a Path to Robust THz Communication Systems" 0;
          "Chan-Shan Yang" "https://scholar.lib.ntnu.edu.tw/zh/persons/chan-shan-yang" "THz metamaterial gas sensor utilizing composite membrane ZnO/V-MOF for nitrogen dioxide detection" 0;
          "Chih-Wei Luo" "https://phys.nycu.edu.tw/en/portfolio-item/%E7%BE%85%E5%BF%97%E5%81%89-%E6%95%99%E6%8E%88/" "Generation and manipulation of circularly polarized THz dual pulses" 0;

          "**Tea & Coffee**" 1 "15 mins break" 1;
          "Hsin-Yu Yao" "https://physics.ccu.edu.tw/p/404-1077-33740.php?Lang=zh-tw" "Ultra-sensitive refractive index sensing based on a tri-mode accidental-boundstate in continuum of an ultra-thin high-contrast dielectric grating" 0;
          "Seyed Mostafa Latifi" 1 "High refractive index photocurable ceramic resin for THz applications" 0;
          "Yu-Hsiang Cheng" "https://homepage.ntu.edu.tw/~yuhsiang/pi.html" "THz filters and couplers fabricated by laser machining and photolithography" 0;

          "**Tea & Coffee**" 1 "15 mins break" 1;
          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Analytical expression for enhanced focusing of short focal-length spherical THz lenses" 0;
          " Speaker " 1 " " 0;
          "Hui-Hsin Hsiao" "https://scholars.lib.ntu.edu.tw/cris/rp/rp200463" "Selective multi-wavelength and narrowband infrared thermal emitters" 0;

          "**Tea & Coffee**" 1 "15 mins break" 1;
          " Speaker " 1 " " 0;
          " Speaker " 1 " " 0;
          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Closing Remarks" 3;]


T_start =  DateTime(2024,06,18,10,50) ;

function write_line( x, t )
    t_add = Dates.Minute(20)
    date_form = "HH:MM"
        
    if x[4]==1
        t_add = Dates.Minute(15) # Tea break
        date_form = "**HH:MM**"
    elseif x[4]==2
        t_add = Dates.Minute(40) # Lunch
        date_form = "**HH:MM**"
    elseif x[4]==3
        t_add = Dates.Minute(10) # Opening remark
    end

    t_end = t+t_add
    time = string( "| ", Dates.format(t, date_form), "-", Dates.format(t_end, date_form) )
    if x[2]==1
        line_out = string(time, " | ", x[1], " | ", x[3], " | \n")
    else
        line_out = string(time, " | [", x[1], "](", x[2], ") | ", x[3], " | \n")
    end
    return line_out, t_end
end

T_current = T_start; # Current time
str_out = "";
str_now = write_line(T1[1,:], T_start)
for i in range(1, size(T1,1))
    global str_now, T_current = write_line(T1[i,:], T_current)
    str_now = replace(str_now, "**-**"=>"-")
    global str_out = string(str_out, str_now)
end

println(" ")
println(str_out)
