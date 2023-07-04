---
title: Terahertz Sources and Detectors.
date: '2023-06-20'
#lastmod: '2022-09-01T10:24:33+08:00'

type: book
share: false
show_date: true
profile: false

weight: 30

blogdown::html_page:
image:
  focal_point: 'bottom'
  

---
<div2>
The techniques used for generating and detecting THz radiation in my laboratory is discussed here.
<!--more-->
{{<toc hide_on="xl">}}

## THz radiation from non-linear optics

The THz generation and detection mechanisms used here are respectively optical rectification and electro-optic sampling in ZnTe. They are both  2$^{\text{nd}}$ order non-linear polarization effects. The classical description of non-linear polarization phenomena is as follows. Electrons are modeled as masses held in place by non-linear springs. In other words, a Lorentzian oscillator \S \ref{sec2:Classical Lorentzian} in a non-linear potential with cubic, and higher, displacement dependence terms. The solution to the equation of motion for an input of two superpositioned $E$-fields with frequencies $\omega_1$ and $\omega_2$ is[^non-linearoptics]
{{<cust_eq src="P^{(2)}_i(\omega_1 - \omega_2)=\epsilon_0 \sum_{j,k}\chi_{i,j,k}^{(2)}(\omega_1-\omega_2) E_j(\omega_1)E_k^*(\omega_2)," id="P2_i" >}}
where $\chi_{i,j,k}^{(2)}$ is the susceptibility tensor and the $i,j,k$ subscripts denote the Cartesian components of polarization. Note, this is the difference frequency term. The case of the sum frequency mixing is observed in the mathematical details[^non-linearoptics]. In the early 1960s, Bass et al[^Bass1962] observed difference frequency mixing, named optical rectification, and Franken et al[^Franken1961] observed sum frequencies generation.

[^non-linearoptics]: P. E. Powers. *Fundamentals of Nonlinear Optics.* CRC Press (2011). ISBN 9781420093513, ch. 3.
[^Bass1962]: Bass, M., Franken, P.a., Ward, F., and Weinreich, G. *Optical Rectification.* Physical Review Letters, 9, 446 (1962).
[^Franken1961]: Franken, P.A., Hill, A.E., Peters, C.W., and Weinreich, G. *Generation of optical harmonics.* Physical Review Letters, 7, 118 (1961).


### THz generation, Optical Rectification
Optical rectification falls out of eq. \eqref{eq:Pnl and chi} when we take the limit of $\omega_2 \to \omega_1$, 
{{<cust_eq src="P^{(2)}_i(0)=\epsilon_0 \sum_{j,k}\chi_{i,j,k}^{(2)}(0) E_j(\omega_1)E_k^{*}(\omega_1)." id="P2_0" >}}
One can now see that a strong electric field at $\omega_1$ gives rise to a DC polarization. In practice, the bandwidth of the input laser determines the distribution of difference frequency components. Lasers emitting ultra-short (100fs) pulses have frequency bandwidths in the THz regime. Such pulses are shone onto a crystal. This causes a polarization and thus the oscillation of the bound charges. Accelerating charges cause the emission of $E$-fields. Since the polarization has low frequency components, the emitted field has THz frequencies. 


The above process can only occur in crystals where the 2$^{\text{nd}}$ order susceptibility tensor, $\chi^{(2)}$, is non-zero. This excludes all crystals with inversion symmetry\footnote{All components of $\chi^{(2)}$ equal $0$ in crystals with inversion symmetry}. Listed in the table below are commonly used THz generation crystals and their symmetry point group. The crystal symmetry group determines the crystal's response to the angular orientation of the incoming radiation. ZnTe, the crystal used in this thesis, emits maximum THz when the optical polarization lies in the {110} plane. For crystals cut in this plane, THz generation is then maximized by rotation of the crystal wafer. 


| Material  | Point Group  |
|:---------:|:---------:|
| {{< math >}}LiNbO$_{3}$, LiTaO$_{3}$ {{< /math >}}  | $3m$ |
| ZnTe, GaAs, GaP, InP      | $\bar{4}3m$ |
| GaSe      | $\bar{6}2m$ |


For further optimization the crystals needs: to be transparent with minimal absorption at all frequencies involved, to have a high damage threshold to withstand the intensities needed and to not have other competing non-linear processes. For final generation optimization, one has to have constructive interference between all the waves generated from all points in the crystal. In other words, the THz phase velocity has to be equal to the group velocity of the laser input packet within the material.



If the phase matching condition is fully satisfied, the THz field gradually gets amplified while propagating through the medium. Now consider an optical wave traveling faster than the THz wave. The effective interaction length is given as the coherence length $l_c$ of when either waves are $\pi/2$ out of phase with each other:
{{<cust_eq src="l_c=\frac{c}{2f_{THz}|n_g-n_{THz}|}," id="coh_length" >}}
where $n_g$ ($n_{THz}$) is the group (phase) refractive index at the visible (terahertz) frequencies. From eq. \eqref{eq:coherence length} one can see that $l_c \to \infty$ as $n_g \to n_{THz}$. In reality this condition is hard to satisfy. The most commonly used nonlinear crystal for THz generation is ZnTe because it best satisfies this condition at the operational wavelength (800nm) of Ti:Sapphire lasers.  In ZnTe $l_c \to \infty$ for visible wavelengths around 800nm and terahertz frequencies around 1.69THz \cite{Nahata1996}, shown in the fig. \ref{fig:Ref_index_ZnTe}.
\begin{figure}[h!]\centering
\includegraphics[width=0.65\linewidth]{Chapters/Experimental/Ref_index_ZnTe.pdf}
\caption{Group refractive index $n_g$ and phase refractive index $n_{THz}$ at optical and terahertz regimes, respectively, of ZnTe. Taken from [^PrinciplesofTHz]}
\label{fig:Ref_index_ZnTe}
\end{figure}



Finally, one has to consider the crystal's absorption in the spectral region of interest. The dominant causes of absorption in such crystals are the transverse-optical phonon resonances in the terahertz region. Table below lists the lowest TO-phonon resonances in some EO crystals in commonly used crystals, taken from [^PrinciplesofTHz].

| | | | | | | 
|:---:|:---:|:---:|:---:|:---:|:---:|
|    | ZnTe  | GaP | InP | GaAs | {{< math >}}LiNbO$_{3}$ {{< /math >}} |
|{{< math >}} $f_{TO}$ (THz) {{< /math >}} | 5.3 | 11 | 9.2 | 8.1 | 7.7 |



[^PrinciplesofTHz]:Lee, Y.S. *Principles of terahertz science and technology* (2009). ISBN 9780387095394.


</div2>
