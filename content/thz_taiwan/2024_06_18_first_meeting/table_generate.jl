
using Dates

T1 =    ["Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Opening Remarks" 3;
          "Javed Iqbal" 1 "Investigation and fabrication of high-K and low-loss structural nanocomposites for THz wave" 0;
          "Hsin-Yu Yao" "https://physics.ccu.edu.tw/p/404-1077-33740.php?Lang=zh-tw" "Ultra-sensitive refractive index sensing based on a tri-mode accidental-boundstate in continuum of an ultra-thin high-contrast dielectric grating" 0;
          "Prabir Garu" 1 "Design of SIW-fed endfire exponential tapered horn antenna for sub-THz communications" 0;

          "**Lunch**" 1 "**40 Mins lunch break**" 2;
          "Pouya Torkaman" 1 "Harmonizing Nonlinearity in Channel: Forging a Path to Robust THz Communication Systems" 0;
          "Chan-Shan Yang" "https://scholar.lib.ntnu.edu.tw/zh/persons/chan-shan-yang" "Terahertz Mie resonance and magnetoplasmonic effect by chain formation in ferrofluid" 0;
          "Chien-Ming Tu" "https://ep.nycu.edu.tw/en/faculty_info/%e6%9d%9c%e5%bb%ba%e6%98%8e/" "Terahertz emission spectroscopy of topological material candidate SrCd2Sb2 single crystals" 0;

          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          "Hui-Hsin Hsiao" "https://scholars.lib.ntu.edu.tw/cris/rp/rp200463" "Selective multi-wavelength and narrowband infrared thermal emitters" 0;
          "Seyed Mostafa Latifi" 1 "High refractive index photocurable ceramic resin for THz applications" 0;
          "Yu-Hsiang Cheng" "https://homepage.ntu.edu.tw/~yuhsiang/pi.html" "THz filters and couplers fabricated by laser machining and photolithography" 0;

          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          "Chia-Ming Mai" 1 "Hyperspectral Terahertz Computational Imaging and Its Applications" 0;
          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Analytical expression for enhanced focusing of short focal-length spherical THz lenses" 0;

          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Closing Remarks" 3;
          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          "Laboratory Tour" 1 "Optional Laboratory Tour" 35;
]


T_start =  DateTime(2024,06,18,11,00) ;

function write_line( x, t )
    t_add = Dates.Minute(Int64(x[4]))
    date_form = "HH:MM"
    if x[4]==1
        t_add = Dates.Minute(20) # Tea break
        date_form = "**HH:MM**"
    elseif x[4]==2
        t_add = Dates.Minute(40) # Lunch
        date_form = "**HH:MM**"
    elseif x[4]==3
        t_add = Dates.Minute(10) # Opening remark
    elseif x[4]==4
        t_add = Dates.Minute( 30 ) # Laboratory tour
    elseif x[4]==0
        t_add = Dates.Minute(20) # Talk
    else
        t_add = Dates.Minute(Int64(x[4]))
    end

    println(t_add)

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
