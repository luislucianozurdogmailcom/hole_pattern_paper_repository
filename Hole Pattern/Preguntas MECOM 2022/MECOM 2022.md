# ¿Metodo numérico utilizado?

![[Recording 20221022024427.webm]]

----
# Aproximación utilizada


![[Recording 20221022030131.webm]]

-----
# ¿Ecuaciones del problema?


![[Recording 20221022024909.webm]]
## Ec del calor
$$\alpha \left(\frac{\partial T}{\partial x} + \frac{\partial T}{\partial y} \right) = \frac{\partial T}{\partial t}$$
## Ley de fourier
$$
\dot{Q} = -k \cdot A \cdot \frac{\partial T}{\partial X}
$$
-----
# Discretización del dominio o mallado


![[Recording 20221022025625.webm]]

-----
# Tratamiento de las ecuaciones de borde


![[Recording 20221022025748.webm]]

----
# Lenguajes de programación utilizados


![[Recording 20221022030348.webm]]

----
# Pasos espaciales y temporales

$$
\Delta x = 0,5
$$ $$\Delta y = 0,5$$
$$\Delta t \approx 0,05357 $$

----
# Cuidados para evitar divergencias

$$
  \frac{2\alpha \Delta t}{\Delta x^2}+\frac{2\alpha \Delta t}{\Delta y^2} <1
$$
----
# Constantes del medio sólido
- $k = 1$
- $\rho =1$
- $C_p = 1$
- $\alpha = 1$

