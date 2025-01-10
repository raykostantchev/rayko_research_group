
using Dates

T1 =    ["Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Opening Remarks" 10;
          " Elmer Estacio " "https://nip.upd.edu.ph/profiles/elmer-s-estacio/" "Novel THz photoconductive antenna design:  Enhancements in both the visible light absorption and in terahertz emission / detection characteristics" 0;
          " Hsin-Yu Yao " "https://physics.ccu.edu.tw/p/404-1077-33740.php?Lang=zh-tw" "Intrinsic Resonance in Gyrotrons Using Non-Resonant RF Structures" 0;
          " Chih-Wei Luo " "https://udllab.web.nycu.edu.tw/professor/" "Generation and manipulation of circularly polarized THz dual pulses" 0;

          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          " Chan-Shan Yang " "https://sites.google.com/view/units-lab/Home?authuser=0" " To be announced " 0;
          " Masafumi Fukunari " "https://r-info.ad.u-fukui.ac.jp/Profiles/30/0002988/profile.html?lang=en" "High-power Terahertz Vortex Generation Using a Gyrotron and Validation of Topological Charges" 0;

          "**Lunch**" 1 "**40 Mins lunch break**" 2;
          " Yu-Chieh Wen " "https://www.phys.sinica.edu.tw/~optical/index_e.php?p=groupLeader_e" "Origin of Nonlinear Photocurrents in Chiral Multifold Semimetals Unveiled by Terahertz Emission Spectroscopy" 0;
          " Yuya Ishikawa " "https://r-info.ad.u-fukui.ac.jp/Profiles/30/0002976/profile.html?lang=en" "Recent Progress on Development of High-Frequency ESR apparatus" 0;
          " Hideaki Kitahara " "https://r-info.ad.u-fukui.ac.jp/Profiles/30/0002981/profile.html?lang=en" "Measurement of Dielectric Loss Tangent for Low Loss Plastics by Terahertz Time-domain Spectroscopy" 0;

          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          " Chien-Ming Tu " "https://ep.nycu.edu.tw/en/faculty_info/%E6%9D%9C%E5%BB%BA%E6%98%8E/" "Chemical pressure-induced topological order in SrCd2(As1-xSbx)2: A terahertz emission study" 0;
          " Eunmi Choi " "https://emchoi.unist.ac.kr/?page_id=8" " To be announced " 0;
          " Chiko Otani " "https://www.riken.jp/en/research/labs/rap/thz_sens_imag/index.html" "Terahertz Sensing, Imaging and Applications" 0;

          "**Tea & Coffee**" 1 "**20 mins break**" 1;
          "Kosuke Murate" "https://profs.provost.nagoya-u.ac.jp/html/100010133_en.html" "Real-time spectroscopic measurement using terahertz parametric generator and detector" 0;
          "Tsun-Hsu Chang" "https://khub.nthu.edu.tw/researcherProfile?uuid=25774CEE-118E-4316-934A-8FC573E0BF44" " To be announced" 0;
        " Ming-Chang Chou" "https://www.nsrrc.org.tw/Chinese/personal.aspx?ID=15250&Dept_UID=37&Type=D" "Accelerator-based Coherent THz Sources Developed for User Applications at NSRRC" 0;

          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "To be announced" 0;

          "Rayko I. Stantchev" "/author/rayko-ivanov-stantchev" "Closing Remarks and Group photo" 3;
          "Laboratory Tour" 1 "Optional Laboratory Tour" 35;
]


T_start =  DateTime(2025,01,13,10,00) ;

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

    # println(t_add)

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
