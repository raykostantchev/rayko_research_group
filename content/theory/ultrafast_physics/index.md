---
title: Ultrafast Optics and Electromagnetism.
date: '2023-06-20'
#lastmod: '2022-09-01T10:24:33+08:00'

type: book
share: false
show_date: true
profile: false

weight: 10

image:
  focal_point: 'bottom'


---

<div2>
This is the chapter about what is meant by Ultrafast Physics in the context of Terahertz pulses. 
<!--more-->
{{< toc hide_on="xl" >}}

I am going to talk about femtosecond optics and physics

## Ultrafast Optics

What is Ultrafast physics goes into here, which is you know yet to be updated.... You know I need to talk about femtosecond pulses and stuff




## Electromagnetism

This entire work lays its foundations upon Maxwell's macroscopic equations:

{{<cust_eq src="\nabla \cdot \mathbf{D} = \rho_f," id="max-1" >}}
{{<cust_eq src="\nabla \cdot \mathbf{B} =0," id="max-2" >}}
{{<cust_eq src="\nabla \times \mathbf{E}  =-\frac{\partial \mathbf{B}}{\partial t}," id="max-3" >}}
{{<cust_eq src="\nabla \times \mathbf{H}    =\frac{\partial \mathbf{D}}{\partial t} + \mathbf{J}_f," id="max-4" >}}


where $\rho_f$ and $\mathbf{J}_f$ are respectively the free charge and current densities within some space. The macroscopic fields $\mathbf{D}$ and $\mathbf{H}$ are defined as

{{<cust_eq src="\mathbf{D} \equiv \epsilon_0 \mathbf{E} + \mathbf{P}=\epsilon \mathbf{E}," id="d_def" >}}
{{<cust_eq src="\mathbf{H} \equiv \frac{1}{\mu_0}\mathbf{B} - \mathbf{M}=\frac{1}{\mu}\mathbf{B}," id="h_def" >}}

where $\epsilon_0$ and $\mu_0$ are respectively the permittivity and permeability of free space with $\epsilon$ and $\mu$ being the electric permittivity and the magnetic permeability of a material, respectively. The polarization $\mathbf{P}$ and magnetization $\mathbf{M}$ hold the macroscopic information regarding the properties of the medium in mind.  


#### Boundary Conditions at a surface discontinuity

The above equations are stated for regions of space where there is no discontinuity in the material properties of the medium. However, objects exist causing abrupt changes in the material properties needed to describe the scene in mind. These changes impose boundary conditions to the electric and magnetic fields across the surface of such discontinuities. These boundary conditions are only stated here due to their immense importance in all electro-magnetic phenomena and for the sake of completeness;

{{<math>}}
\begin{align}
	\mathbf{n}_{12}\cdot (\mathbf{B}^{(2)}-\mathbf{B}^{(1)})  & =0, & \mathbf{n}_{12}\times (\mathbf{H}^{(2)}-\mathbf{H}^{(1)}) & =\mathbf{j}_s, \\
	\mathbf{n}_{12}\cdot (\mathbf{D}^{(2)}-\mathbf{D}^{(1)}) & =  \rho_s, & \mathbf{n}_{12}\times (\mathbf{E}^{(2)}-\mathbf{E}^{(1)})& =0 \label{eq:b_cond} \tag{b_cond} 
\end{align}


where $\rho_s$ and  $\mathbf{j}_s$ are respectively the surface charge and current densities across the discontinuity and $\mathbf{n}_{12}$ is the vector normal to the surface. In words, these boundary conditions can be stated as: The normal component to the magnetic induction and the tangential electric field are both continuous across the discontinuity, and the normal electric displacement and tangential magnetic fields change abruptly with their discontinuities respectively equaling $\rho_s$ and $\mathbf{j}_s \times \mathbf{n}_{12}$.{{</ math >}} A full derivation of these boundary conditions can be found in chapter 1.1.3 of reference [^WolfOptics].





### Wave equation and Fabry-Perot

From Maxwell's equations, we next obtain the wave equation for the electric field. This is accomplished by putting equations [(max-4)](#max-4), [(d_def)](#d_def) and [(h_def)](#h_def) into the curl of [(max-2)](#max-2) and simplifying with the vector identity $\nabla \times (\nabla \times \mathbf{A})=\nabla(\nabla \cdot \mathbf{A})-\nabla^2 \mathbf{A}$;
{{<cust_eq src="\nabla^2 \mathbf{E}-\epsilon \mu \frac{\partial^2 \mathbf{E}}{\partial t^2}=\mu \frac{\partial \mathbf{J}_f}{\partial t}+ \frac{1}{\epsilon}\nabla \rho_f. " id="wave_0" >}}
Further simplifications are made with Ohm's law $\mathbf{J}_f=\sigma\mathbf{E} $ and neglecting charge density fluctuations, ie. $\nabla\rho_f=0$, to then obtain
{{<cust_eq src="\nabla^2 \mathbf{E}-\epsilon \mu \frac{\partial^2 \mathbf{E}}{\partial t^2}=\sigma \mu \frac{\partial \mathbf{E}}{\partial t}," id="wave_1" >}}
where $\sigma$ is the electrical conductivity. An identical wave equation is obtained is for $\mathbf{H}$ in an identical manner. In the case of free space propagation, $\sigma=0, \epsilon=\epsilon_0, \mu=\mu_0$, one obtains $c=1/\sqrt{\epsilon_0\mu_0}$ as the speed at which an electromagnetic wave moves through a vacuum. In other words $c$ is the speed of light. However, should $\sigma=0$, $\epsilon \neq \epsilon_0$ and $\mu \neq \mu_0$ then the wave propagates with speed $v=c/n$ where $n$ is the refractive index of the material given by $n^2=\frac{\epsilon \mu}{\epsilon_0 \mu_0}$.


Having an equation only sets up the problem and does not yield insight or information regarding the observable world. For this reason, we look for solutions to the wave equation that are expressed as linearly polarized, monochromatic, plane waves traveling in the z-direction with wave-vector $\mathbf{k}=k_z \mathbf{\hat{z}}$, ie:

{{<cust_eq src="\mathbf{E}(\mathbf{r},t)=\mathbf{E}_0 e^{i(k_z z- \omega t)}." id="plane_wave_0">}}


Putting this equation into eq. [(wave_1)](#wave_1) yields the following dispersion relation
{{< cust_eq src="k^2_z=\omega \mu(\epsilon \omega + i \sigma)." id="dispersion_0" >}}
This relationship determines how a wave propagates in a medium with specific electromagnetic properties $\epsilon, \mu, \sigma$. In the case of a dielectric or an insulator $\sigma \simeq 0$ hence $k_z$ is purely real. Then the wave propagates as
{{< cust_eq src="\mathbf{E}(\mathbf{r},t)=\mathbf{E}_0 e^{i(\omega \sqrt{\mu \epsilon} z- \omega t)}" id="propagate_0" >}}
and experiences no decay provided $\mu$ and $\epsilon$ are both positive and real. In a conductor, however, the conductivity is very large such that $\sigma \gg \epsilon \omega$ thus $k^2 \approx i \omega \mu \sigma$. Evidently

{{<cust_eq src="k=k_r+i k_i \approx \sqrt{\frac{\omega \mu \sigma}{2}}(1+i)," id="k_conductor_0">}}

where $k_r$ and $k_i$ are the real and imaginary parts of the $k$ vector. In this case the EM wave propagates as

{{<cust_eq src="\mathbf{E}(\mathbf{r},t)=\mathbf{E}_0 e^{i(\omega \mu \sigma z/2- \omega t)}e^{-z/d}," id="propagate_1" >}}

where $d=\sqrt{\frac{2}{\omega \mu \sigma}}$ is known as the attenuation length or skin depth. This value indicates how far the wave will penetrate before being attenuated.

#### Reflections at Boundaries

We now have a plane wave as a simple solution to our wave equation. If we input this into $\nabla \cdot \mathbf{E}=0$ and $\nabla \cdot \mathbf{H} =0$ we observe the following relation

{{<cust_eq src="\mathbf{k} \cdot \mathbf{E}=\mathbf{k} \cdot \mathbf{H}=0." id="k_vector_0" >}}


This relationship implies that $\mathbf{E}$ and $\mathbf{H}$ are both perpendicular to the direction of travel, hence EM waves are transverse. A consequence of this is that if one considers transmission through an interface between two media of different refractive indices, then the wave can be polarized perpendicular or parallel in regards to the plane incidence as shown in [Figure Fresnel Coefficients](#figure-fresnel). This consequence combined with the continuity boundary conditions at the surface, in section [Boundary Conditions](#boundary-conditions-at-a-surface-discontinuity), implies that you get different reflection and transmission coefficients depending on how your incident light is polarized.

{{<cust_figure src="./theory/Fresnel.svg" caption="**Figure Fresnel Coefficients:** Reflection and transmission of a plane wave at a surface between two mediums with different refractive indices. Shown are the incident, reflected and transmitted $k$ vectors in blue, and shown with the pink and green arrows is wave polarization parallel and perpendicular to the plane of incidence respectively." id="fresnel" width="75%" theme="light" numbered="false">}}

This fact when combined with Snell's law of refraction
{{<cust_eq src="n_1 \sin \theta_1=n_2 \sin \theta_2," id="snell_law" >}}


where $n_{1,2}$ are the refractive indices of the two mediums and $\theta_{1,2}$ are the angles of incidence and refraction, yields the famous Fresnel amplitude reflection and transmission coefficients:
{{< cust_eq src="r_{\parallel}=\frac{n_2 \cos \theta_1 - n_1 \cos \theta_2}{n_1 \cos \theta_1 + n_2 \cos \theta_2}, " id="r_para" >}}

{{<cust_eq src="t_{\parallel}=\frac{2n_1 \cos \theta_1}{n_1 \cos \theta_1 + n_2 \cos \theta_2}," id="t_para" >}}

{{<cust_eq src="r_{\perp}=\frac{n_1 \cos \theta_1 - n_2 \cos \theta_2}{n_1 \cos \theta_1 + n_2 \cos \theta_2}," id="r_perp" >}}

{{<cust_eq src="t_{\perp}=\frac{2n_1 \cos \theta_1}{n_1 \cos \theta_1 + n_2 \cos \theta_2}. " id="t_perp" >}}


Furthermore one defines the Reflectivity and Transmissivity as $R=|r|^{2}$ and $T=n_2 |t|^2/n_1$.

#### Fabry-Perot Interference

The above consideration would hold absolutely true if our world was made from solely two materials. Obviously untrue, hence the next step of extending our mathematical model of the world is to consider the scenario when the second material is of a finite thickness $L$. When a plane arrives at the incident interface it will split into a reflected and a transmitted component. Then, the transmitted part will come up against the second exit interface and split again. The consequential reflected component will split again at the other interface. This process will carry on going indefinitely. Further, every time the wave travels through the dielectric it will pick up a phase shift, between each preceding member of the set of reflected or transmitted waves, of
{{< cust_eq src="\phi=\frac{2 \pi f}{c}L n_{2}\cos \theta_2," id="fp_phase" >}}
where $f$ is the frequency of the wave. 

{{<cust_figure src="./theory/Fabry-perot.svg" caption="**Figure Fabry-Perot:** Reflection and transmission of a plane wave undergoing multiple reflections within a dialectic." id="fabry-perot" width="50%" theme="light" numbered="false">}}

A *Fabry-Perot resonance* is defined as when all the components resulting from each individual splitting of the wave interfere constructively. Now, if one considers the superposition of all these waves then the total transmitted field $E_t$ is given by

{{<cust_eq src="\begin{split} \begin{split} E_t&=E_i t_1 t_2e^{i\phi}(1+r_1 r_2 e^{2i\phi}+ r_1^2 r_2^2 e^{4i\phi}+...\\ &=E_i t_1 t_2 e^{i\phi}\sum_{n=0}^{\infty}(r_1 r_2 e^{2i\phi})^{n}\\ &=E_i \frac{ t_1 t_2e^{i\phi}}{1 - r_1 r_2 e^{2i\phi}},\end{split}\end{split}" id="fp_trans" >}}

where $t_1, t_2, r_1, r_2$ are the relevant Fresnel coefficients in [Figure Fabry-Perot](#figure-fabry-perot). A more detailed derivation is given in ch. 7.6.1 of reference [^WolfOptics] along with the equation for reflection;
{{<cust_eq src="E_r=-\frac{r_2(1-(r_2^2+t_1 t_2)e^{2i\phi}}{1-r_2^2 e^{2i\phi}}E_i." id="fp_refl" >}}

These two equations [(fp_trans)](#fp_trans) \& [(fp_refl)](#fp_refl) do need to be considered if one wishes to do a reflection or transmission experiment through any material. In THz measurements they are also used to extract permittivity of an unknown material, as outlined in \S\ref{sec:multi-layers}.

### Fundamental models of matter
So far, the previous sub-sections have assumed that the materials properties, $\epsilon, \mu$ and $\sigma$, do not change with the frequency of the EM wave. This is false for all materials in an absolute sense, however for certain frequency ranges this can be approximately true and such materials are called dispersion-less. However, most materials do change with frequency since everything contains atoms and electrons which interact with an incident EM wave. 


#### Classical Lorentzian
For an improved mathematical description of the world the classical Lorentzian model was developed. It accounts for the response of charged and bound particles to an incident EM wave. Here, one assumes that a bound charge oscillates about its equilibrium position and thus has a potential energy given by a simple harmonic oscillator of frequency $\omega_0$ and mass $m$:
{{< cust_eq src="U(x)=\frac{1}{2}m \omega_0^2 x^2." id="harmonic_potential" >}}
Then the charged particle will experience a restoring force $F_r$ from $\mathbf{F}=-\nabla U$. Further more, there will be a damping term $F_d$ and a force from the incident electric field $F_E$. Combining these forces into Newton's second law gives;

{{<cust_eq src="\begin{split}m\frac{d^2 x}{dt^2}&=F_r+F_d+F_E\\ &=-m\omega_0^2x-m\gamma\frac{dx}{dt}+qE,\end{split}" id="newton_law2" >}}

where $\gamma$ is the phenomelogical damping rate and $q$ is the charge of the charged particle. If we say that we have a scalar monochromatic linearly polarized EM wave, ie. it is of the form of eq. [(plane_wave_0)](#plane_wave_0), then the solution to eq. [(newton_law2)](#newton_law2) is given by
{{< cust_eq src="x(t)=\frac{q E_0 e^{-i\omega t}}{m(\omega_0^2-\omega^2-i\gamma\omega)}." id="harmonic_oscillator" >}}

Now one knows the electric dipole moment per charged harmonic oscillator $p(t)=qx(t)$. Hence, for a medium with $N$ oscillators per unit volume we have an electric polarization of

{{<cust_eq src="\begin{split}P(t)=Nqx(t) &=\frac{Nq^2 E_0 e^{-i\omega t}}{m(\omega_0^2-\omega^2-i\gamma\omega)}\\ &\equiv \epsilon_0 \chi(\omega)E_0 e^{-i\omega t}, \end{split}" id="lorentz_oscillator" >}}


where $\chi(\omega)$ is the linear susceptibility of the medium. Now if we consider eqs. [(d_def)](#d_def) and [(lorentz_oscillator)](#lorentz_oscillator) we can define the relative permittivity of our medium
{{<cust_eq src="\epsilon_r (\omega) \equiv \frac{\epsilon(\omega)}{\epsilon_0} =1 + \chi(\omega)=1 + \frac{Nq^2 }{m\epsilon_0(\omega_0^2-\omega^2-i\gamma\omega)}" id="eps_rel" >}}


with real and imaginary parts $\epsilon_r=\epsilon_r'+i\epsilon_r''$, given by

{{<cust_eq src="\epsilon_r'=\frac{Nq^2(\omega_0^2-\omega^2)}{m\epsilon_0((\omega_0^2-\omega^2)+\omega^2\gamma^2)}" id="eps_real" >}}


{{<cust_eq src= "\epsilon_r''=\frac{Nq^2\omega\gamma}{m\epsilon_0((\omega_0^2-\omega^2)+\omega^2\gamma^2)}" id="eps_imag" >}}

In terahertz this model is most often used to account for the absorption caused by crystal lattice vibrations.


#### Drude model


In the section above the charged particle is bound in space, however the scenario of it being free to move about in space is also possible. To account for such a response the Drude model was developed. Its assumptions are that we have a sea of mobile electrons and a set of stationary positively charged ions constituting our medium. The mobile electrons freely move in only straight lines unaffected by any other forces except those in the instantaneous (assumed to be so) collisions with the impenetrable ion cores (electron-electron collisions conserve momentum hence no change to the current). The electrons collide with the ion cores on average after time $\tau$. This is the only mechanism by which they reach thermal equilibrium, hence we assume that each collision randomizes the velocity with a speed appropriate to the local thermal conditions.


With the above assumptions we can find the DC electrical conductivity of a material. This is done by considering the current density created from $N$ electrons per unit volume moving through a surface area perpendicular to velocity of the electrons $\mathbf{v}$. The charge carried by each electrons is $-e$, hence the current density is simply 
{{< cust_eq src= "\mathbf{J}=-Ne\mathbf{v}." id="drude_current" >}}

Now, if we apply an electric field $\mathbf{E}$ then after time $t$ an electron's velocity will be $\mathbf{v}=\mathbf{v}_0-e\mathbf{E}t/m$, where $\mathbf{v}_0$ is the electron's velocity after its previous collision. Due to the velocity randomization through each collision $\mathbf{v}_0$ averages out to zero. Since each collision occurs on average after time $\tau$, we have

{{<cust_eq src= "\mathbf{v}_{avg}=-\frac{e\mathbf{E}\tau}{m}; \;\;\;\;\;\; \mathbf{J}=\frac{Ne^2\tau}{m}\mathbf{E}," id="drude_avg" >}}

where $\mathbf{v}_{avg}$ is known as the electron drift velocity. From Ohm's law we can see that the DC conducivity, $\sigma_0$, of a metal is
{{<cust_eq src= "\mathbf{J}=\sigma_0 \mathbf{E}; \;\;\;\;\;\; \sigma_0=\frac{Ne^2\tau}{m}." id="drude_sigma0">}}

In practice we don't know $\tau$ but by measuring the conductivity we can estimate values for it.


With the above assumptions, the Drude response of a medium to a monochromatic wave can be characterized by that of a Classical Lorentzian oscillator centered at zero frequency and a damping rate equal to the probability of collision per unit time, ie. $\omega_0=0$ and $\gamma=1/\tau$ in eq. [(harmonic_oscillator)](#harmonic_oscillator). However, we are interested in the velocity not position so we can use eq. [(drude_current)](#drude_current) to obtain

{{<cust_eq src= "\sigma(\omega)=\frac{Ne^2\tau}{m(1-i\omega\tau)}=\frac{\sigma_0}{1-i\omega\tau}" id="drude_AC">}}


as the AC conductivity of our material. Now, if we turn our attention to the wave equation [(wave_1)](#wave_1) describing our EM wave and say $\mu=\mu_0$, we can see that it can written in the form 

{{<cust_eq src= "\nabla^2 \mathbf{E}=-\omega^2 \mu_0\left(\epsilon+ \frac{i \sigma_0}{\omega(1-i\omega \tau)}\right)\mathbf{E}." id="drude_wave">}}


This yields the following dispersion relation for our monochromatic wave; 

{{<cust_eq src= "k_z^2=\omega^2\mu_0 \epsilon_0\epsilon(\omega); \;\;\;\;\; \epsilon(\omega)=\epsilon_{\infty}+\frac{i \sigma_0}{\epsilon_0\omega(1-i\omega \tau)}," id="drude_disp">}}

where $\epsilon_{\infty}$ is the frequency independent dielectric permittivity due to the contribution of bound charges and $\epsilon(\omega)$ is known as the Drude permittivity.

If we now consider the case of $\omega\tau>>1$ we can see that our Drude permittivity approximates to
{{<cust_eq src= "\epsilon(\omega) =\epsilon_{\infty}-\frac{Ne^2}{m\epsilon_0\omega^2}=\epsilon_{\infty}-\frac{\omega_p^2}{\omega^2}," id="drude_plasma">}}

where $\omega_p=\sqrt{Ne^2/m\epsilon_0}$ is known as the plasma frequency of the material. Since $k_z \propto \sqrt{\epsilon(\omega)}$ then when $\omega^2 \epsilon_\infty>\omega_p^2$ we have a purely real dispersion relation thus the wave propagates inside the material. For $\omega^2 \epsilon_\infty<\omega_p^2$ we have a purely imaginary $k_z$ signifying  that the waves decay inside the material at the rate given by $k_i(\omega)=\frac{1}{c}\sqrt{\omega_p^2-\epsilon_\infty\omega^2}$.








[^WolfOptics]: Born, M. and Wolf, E. *Principles of optics : electromagnetic theory of propagation, interference and diffraction of light*. Cambridge University Press (1999). ISBN 9780521642224.





</div2>
