---
title: Terahertz time-domain spectropscopy.
date: '2023-06-20'
#lastmod: '2022-09-01T10:24:33+08:00'

type: book
share: false
show_date: true
profile: false

weight: 20


image:
  focal_point: 'bottom'
  

---
<div2>
The basic idea of terahertz time-domain spectroscopy is described here.
<!--more-->
{{<toc hide_on="xl">}}

## THz Time domain spectrometer


{{<figure src="THz_TDS.svg" caption="**Figure THz-TDS:** Schematic of time domain terahertz spectrometer. A beam of ultrashort optical pulses leave an ultrafast laser. The beam is split into three beams: generation, detection and excitation. A chopper is placed in the detection or generation beams, depending on the needs of the experiment. A spatial light modulator, which can be synchronized to the ultrafast-laser, is placed in the excitation beam. Parabolic mirrors are used to collect and collimate the THz radiation." numbered="false" id="thz_tds" width="80%" theme="light">}}


The fundamental layout of a Terahertz time-domain spectromter (THz-TDS) is shown in [Figure THz-TDS](#figure-thz_tds). In its essence, a beam of femtosecond optical pulses is split into three beams: generation, detection and excitation. The first is used to generate a picosecond THz pulse, through optical rectification in ZnTe as discussed in sec. \ref{sec:THz_gen}, which then passes through the sample under investigation. Our THz beam is collimated and collected by 90$^\circ$ off-axis parabolic mirrors made from gold. The second beam is used to detect the time profile of the THz waveform. This is achieved by temporally overlapping the much longer THz pulse with the very short detection pulse. The difference in pulse durations allows one to discretely sample the terahertz temporal profile by varying the path lengths with an optical delay line (typical THz transient and detection pulse envelope shown in [Figure THz pulse](#figure-thz_pulse). The electric field amplitude is detected via the methods discussed in sec. \ref{sec:THz_det}. These systems detect the amplitude and relative phase of the THz pulse. This allows for the extraction of a real and imaginary permittivity of a sample as discussed in sec. \ref{sec:extract_perm}. The third beam is used to photoexcite the sample. These three beams are what constitute a typical THZ-TDS system. However, additionally in our system, the excitation beam can be spatially modulated via a digital micromirror device (DMD) and a lens so as to project any binary intensity pattern onto our sample, and our DMD is synchronized to the main laser system. The reason for this is to enable the construction of the single-pixel camera as discussed in sec. \ref{sec:had_mat}.


### Single-cycle THz transients




{{<figure src="THz_pulse.svg" caption="**Figure THz transient** Red: typical THz pulse detected by our system in normal room conditions (\~35\% humidity). Blue: THz pulse recorded in a box pressurized with dry air (air passed through desiccant). Green: envelope of detection pulse used to discretely sample the THz waveform. Arrow points to the maximum  field strength of our single-cycle THz pulse. Oscillations after the red THz pulse are due to water vapor in the background environment. **Inset:** Blue(red): Fourier spectrum of the THz pulse without (with) water vapour oscillations.%changed the caption" numbered="false" id="thz_pulse" width="71%" theme="light">}}

This section describes the characteristics of our THz pulses. [Figure THz transient](#figure-thz_pulse) shows a typical temporal trace of the THz pulses detected by our THz-TDS, ie. a plot of $E(t)$ with $0.04ps$ resolution. The envelope of our probe pulses used to discretely sample the field-strength of our THZ waveform is also shown here in green. The black arrow points to the maximum field value of our THz pulse at $\approx 4.2ps$. In-front and behind this positive value two other peaks with negative values can be seen. This is our main THz waveform which is generated and detected by our system. In the blue line, some other oscillations behind the main THz pulse can be seen. These are dependent of optics and alignment of the system, therefore they they do not change regularly but only when one performs a major change/update to the system[^ft1]. In the red curve, one can see many other oscillations after the main THz pulse. The experimental difference between the red and blue curves is that the red pulse was measured in normal room conditions, where as the blue one was measured in a dry air enclosure[^ft2]. Therefore, the numerous oscillations seen in the red pulse are due to the water vapor in the ambient atmosphere ($\sim$35\% humidity). These are the rotational modes of the water vapor molecules[^THz_watervapor], and consequently the red THz pulse has reduced field-strength. 


This measurement is performed in the time domain. Therefore, by Fourier transformation one can obtain the spectrum, including the phase information, of the frequencies in our THz pulse, or mathematically
{{<cust_eq src="|E(\omega)|e^{i\phi(\omega)} = \int_{\infty}^{\infty} E(t) e^{-2 \pi i t f} \text{d}t," id="fft_eq" >}}
where $\phi(\omega)$ is the phase information at each angular frequency $\omega =2 \pi f$. This Fourier transform implies that our spectral resolution is determined by the temporal length of our measurement. %Added this last sentence.
The amplitude spectrum, $|E(2 \pi f)|$, of our THz pulse is shown in [Figure Fourier Spectrums](#figure-fourier_data). The full-width-half-maximum and the central frequency of our pulses are $1.3THz$ and $0.95THz$ ($325\mu m$) respectively. The red line shows the spectrum when the water rotational oscillations are present. They manifest at various frequencies as absorptions lines of different widths. These give artifacts when performing spectroscopic analysis, [sec. THz spectroscopic analysis](#thz-spectroscopic-analysis), hence they need to be eradicated in experiment if such analysis is required. 



[^ft1]: For example changing a parabolic mirror or replacing the crystal detector.
[^ft2]: The box was pressurized with air that was passed through desiccant, thus there was no water vapour in the air but in practice the humidity was about 5%.

[^THz_watervapor]: Slocum, D.M., Slingerland, E.J., Giles, R.H., and Goyette, T.M. *Atmospheric absorption of terahertz radiation and water vapor continuum effects*, Journal of Quantitative Spectroscopy and Radiative Transfer, 127, 49 (2013).


## THz spectroscopic analysis
Obtaining the frequency dependent refractive index of a sample is the standard use of a THz-TDS. Consider a pulse of radiation incident upon a slab of material. There will be a transmitted and a reflected pulse (see inset of [Figure THz pulses](#figure-time_data)). The amplitudes of the transmitted and reflected pulses will be related to the incident pulse amplitude via the Fresnel reflection and transmission coefficients, [sec. Reflections at Boundaries][fresnell_S]. However, multiple reflections will occur within the material, as outlined in [sec. Fabry-Perot Interference][fabry-perot_S], hence the transmission and reflection functions of the material are respectively given by eqs. [(fp_trans)][fp_trans] and [(fp_refl) ][fp_refl]. Therefore, if one has knowledge the incident wave and measures the transmission through (or reflection of) some material of known thickness, then it is possible to solve eqs. [(fp_trans)][fp_trans] and [(fp_refl) ][fp_refl] for the refractive index of the material. We next outline how to extract the refractive index of a plastic cover slip with our system.

[fresnell_S]: {{<ref "/theory/ultrafast_physics#reflections-at-boundaries">}}

[fabry-perot_S]: {{<ref "/theory/ultrafast_physics#fabry-perot-interference">}}

[fp_refl]: {{<ref "/theory/ultrafast_physics#fp_refl">}}
[fp_trans]: {{<ref "/theory/ultrafast_physics#fp_trans">}}


In our THz-TDS we perform two measurements: one measuring the temporal waveform transmitted through a sample, $E_{\mbox{samp}}(t)$, and the other to obtain a reference waveform without the sample, $E_{\mbox{ref}}(t)$. These two measurements are shown in [Figure THz pulses](#figure-time_data). Here one can see that the sample pulse (in red) is at a later time than the reference pulse (in blue). This is because it has traveled through the sample which has a larger refractive index than air (the reference pulse traveled through air). A small pulse at $\sim 14ps$ can be seen in the reference waveform, and it arises from the the first Fabry-Perot reflection in the material. Note, some fast oscillations can be see behind our main pulses. They were found to change depending on the optical alignment of our system, hence are associated with detector response function of our ZnTe crystal.

Our measurements contain the relative amplitudes and propagation times of our pulses, therefore a Fourier transform, eq. [(fft_eq)](#fft_eq), will yield the frequency spectrum and along with the relative phase of each frequency. The frequency spectrum and the phase of our THz pulses are shown on in [Figure Fourier Spectrums](#figure-fourier_data). Here the solid blue and red lines show the detected transmission spectrum through free-space and our sample respectively. It can be seen that these two solid curves have the similar shapes, however the red curve has small oscillations in it. These are due to the first Fabry-Perot pulse detected in the time-domain measurement. The blue and red dashed lines show the phase[^unwrap_angle] of the free-space and our sample waveforms respectively. One can see that the red dashed line has larger values of phase. This is because the sample waveform has accumulated a bigger phase delay by propagating through the sample. 




[^unwrap_angle]:The unwrapped angle, shown here, is typically shown since it does not have $2 \pi$ discontinuities hence it has more visual appeal.

<div class="row">
	<div class="column">
	{{<figure src="time_data.svg" caption="**Figure THz pulses:** THz pulses measured by our system. Blue shows the reference pulse and the red trace shows the THz pulse transmitted through our plastic cover slip (this was a 810$\mu m$ thick plastic petry dish made from non-cytotoxic virgin polystyreneSterilin BS EN ISO 24998:2008). Inset shows a schematic illustration of the measurement." id="time_data" width="95%" theme="light">}}
</div>  
<div class="column">
	{{<figure src="Fourier_data.svg" caption="**Figure Fourier Spectrums:** Fourier spectrum of the THz pulses on the left. The solid lines are the power spectrum and dashed lines are the unwrapped phase where the blue (red) colour shows the data from the reference (sample) scan." id="fourier_data" width="95%" theme="light" numbered="false">}}
	</div>
</div>



After the Fourier transformation, we have $E_{\mbox{ref}}(\omega)$ and $E_{\mbox{samp}}(\omega)$ which be substituted in eq. [(fp_trans)][fp_trans]. Note, our reference measurement is related to the incident waveform by $E_{\mbox{ref}}(\omega) e^{-i\omega L/c}=E_i$, where $L$ is the sample thickness, since it has propagated through air with a refractive index of $1$. Therefore we obtain
{{<cust_eq src="\frac{E_{\mbox{samp}} (\omega) }{ E_{\mbox{ref}} (\omega) e^{-i\omega L/c}} = \frac{ t_1 t_2e^{i\phi_n} }{ 1 - r_1 r_2 e^{2i\phi_n} }," id="ext_perm" >}}
where $\phi_n = \omega n L /c$ is the phase delay the wave accumulates by propagating through our sample, $t_{1,2}, r_{1,2}$ are the relevant Fresnel coefficients from [sec. Reflections at Boundaries][fresnell_S]. The only unknown left is the refractive index of our sample, $n$, which can be solved for numerically at each frequency point. Since our measurement contains the relative amplitudes and the relative phases, our solution can obtain the complex refractive index. However, since the phase term is $2 \pi$ periodic there is an infinite number of solutions that satisfy eq. [(ext_perm)](#ext_perm). Therefore, selecting the correct solution is of vital importance. This accomplished by making an initial guess at the refractive index. This guess can be made by looking at the time difference between the reference and sample waveforms. If we denote the temporal co-ordinates of the peaks of the sample and reference waveforms as $t_s$ and $t_r$ respectively, one obtains
{{<cust_eq src="n_r = 1 + \frac{(t_s-t_r)c}{L}" id="n_real" >}}
as the real part of the average refractive index. For non-absorbing samples this will suffice. However, should the sample be absorbing then one can use the above value and 
{{<cust_eq src="\frac{|E_{\mbox{samp}}(\omega_c)|}{|E_{\mbox{ref}}(\omega_c)|} = t_1 t_2 e^{-n_{i} \omega_c L/c}," id="n_imag" >}}
where $\omega_c$ is the central angular frequency of the pulses and $n_{i}$ is the imaginary part of the refractive index, to obtain an initial guess for the imaginary part[^valid_eq]. A more accurate estimate is obtained by saying $t_{1,2}$ are also functions of $n_{i}$, however a numerical solver needs to then be used. Although crude, this initial guess will ensure that the numerical solver (e.g. the the *vpasolve* function built into MATLAB 2016b) of eq. [(ext_perm)](#ext_perm) will find the physically relevant solution. A technical note, this crude initial guess is used only for the first frequency point inputed into the solver. Then the solution from the first frequency point is used as the initial guess for the second frequency point.  This process is iterated until one has a solution for all the frequencies in the spectrum. This iterative process ensures that the obtained refractive index is a continuous function. 

[^valid_eq]:This equation is only valid if we consider only the first transmitted pulse through our sample, ie. zero out the Fabry-Perot pulses in the temporal measurement

### Multi-layer systems
The previous section is only applicable if there are 3 materials, in other words the sample is free standing in space. However, if our sample is enclosed by two cover slips, ie. it is a multi-layered system, then it is convenient to use the transfer matrix method[^Ulbricht2011CarrierSpectroscopy]. As before, our measurement contains the transmission (or reflection) coefficients , however our transmission (or reflection) function of the system is [^Ulbricht2011CarrierSpectroscopy]$^{,}$[^multi_layers]
{{<cust_eq src="t=\frac{ 2 q_i }{q_i M_{11} + q_f M_{22} + q_i q_f M_{12} + Mj_{21}}," id="multi_t" >}}
{{<cust_eq src="r=\frac{ q_i M_{11} - q_f M_{22} + q_i q_f M_{12} - M_{21}  }{q_i M_{11} + q_f M_{22} + q_i q_f M_{12} + Mj_{21}}," id="multi_r" >}}
where $q_{i,f}= n_{i,f} \cos(\theta_{i,f})$ for S-polarized light and $q_{i,f}= n_{i,f}/ \cos(\theta_{i,f})$ for P-polarized light, $n_{i,f}$ are the refractive index of the initial and final media, respectively, enclosing the multilayer system, $\theta_{i,f}$ are the incident and exit angles, and $M$ is a $2\times2$ matrix associated with the propagation through the entire multilayer system. This matrix is given by the product of the individual layer matrices, $M\equiv M_1M_2M_3...M_N$, describing the propagation through each layer. The characteristic matrix of the $j^{\text{th}}$ layer, $M_j$, with thickness $l_j$ and refractive index $n_j$ is given by
{{<cust_eq src="M_j = \left[ \begin{array}{cc} \cos\beta_j & \frac{i}{q_j}\sin\beta_j \\ i q_j \sin\beta_j & \cos\beta_j \end{array}\right]," id="m_j" >}}
where $\beta_j=\omega l_j n_j \cos(\theta_j)/c$ is the phase delay associated with light propagation inside the $j^{\text{th}}$ layer, and $q_{j}= n_{j} \cos(\theta_{j})$ for S-polarized light and $q_{j}= n_{j}/ \cos(\theta_{j})$ for P-polarized light. By equating the experimental amplitude transmission coefficients $E_{\mbox{samp}}/E_{\mbox{ref}}$ with [(multi_layers)](#multi_layers), we can then numerically solve for the permittivity of the sample as before. Then one can divide the transmission functions of the different systems and equate them to the experimental amplitudes. Note, it is of preference that the materials used in the reference measurement are not absorptive hence improve signal to noise.  

This multi-layer analysis allows one model much more complex systems than a simple Fabry-Perot model. We use this multi-layer analysis in...

[^Ulbricht2011CarrierSpectroscopy]: Ulbricht, R., Hendry, E., Shan, J., Heinz, T.F., and Bonn, M. *Carrier dynamics in semiconductors studied with time-resolved terahertz spectroscopy.* Reviews of Modern Physics, 83, 543 (2011).
[^multi_layers]: Furman, S.A. and Tikhonravov, A.V. *Basics of optics of multilayer systems*. World Scientific Publishing (1992). ISBN 2863321102.


</div2>
