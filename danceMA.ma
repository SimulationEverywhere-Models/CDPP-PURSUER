[top]
components : dance

[dance]
type : cell
dim : (5,5)
delay : transport
defaultDelayTime  : 100
border : wrapped
neighbors : dance(-2,-2) dance(-2,-1) dance(-2,0) dance(-2,1) dance(-2,2)
neighbors : dance(-1,-2) dance(-1,-1) dance(-1,0) dance(-1,1) dance(-1,2)
neighbors : dance(0,-2)  dance(0,-1)  dance(0,0)  dance(0,1)  dance(0,2)
neighbors : dance(1,-2)  dance(1,-1)  dance(1,0)  dance(1,1)  dance(1,2)
neighbors : dance(2,-2)  dance(2,-1)  dance(2,0)  dance(2,1)  dance(2,2)
initialvalue : 0
initialCellsValue : dance.val
localtransition : dance-rule

[dance-rule]
rule : { 1 }                     100 { (-1,0) != 0 and (0,0) = 1.2 }
rule : { 1 }                     100 { (1,0)  != 0 and (0,0) = 1.1 }
rule : { 1 }                     100 { (0,-1) != 0 and (0,0) = 1.4 }
rule : { 1 }                     100 { (0,1)  != 0 and (0,0) = 1.3 }
rule : { 1 }                     100 { (-1,0) = 1.1 and (0,0) = 0 }
rule : { 1 }                     100 { (1,0)  = 1.2 and (0,0) = 0 }
rule : { 1 }                     100 { (0,-1) = 1.3 and (0,0) = 0 }
rule : { 1 }                     100 { (0,1)  = 1.4 and (0,0) = 0 }
rule : { 1.1 + randInt(3) / 10 } 100 { (0,0) = 1 }


rule : { 2 }   100 { (-1,0) = 2.1 and (0,0) = 0 }
rule : { 2.1 } 100 { (0,0) = 2.1 and ( (2,0) = 1.2 or (1,0) != 0 or (1,1) = 1.4 or (1,-1) = 1.3 ) }
rule : { 2.1 } 100 { (0,0) = 2 and ( trunc((1,0)) = 1 or trunc((1,-1)) = 1 or trunc((1,1)) = 1 or trunc((2,-2)) = 1 or trunc((2,-1)) = 1 or trunc((2,0)) = 1 or trunc((2,1)) = 1 or trunc((2,2)) = 1 ) }

rule : { 2 }   100 { (1,0) = 2.2 and (0,0) = 0 }
rule : { 2.2 } 100 { (0,0) = 2.2 and ( (-2,0) = 1.1 or (-1,0) != 0 or (-1,1) = 1.4 or (-1,-1) = 1.3 ) }
rule : { 2.2 } 100 { (0,0) = 2 and ( trunc((-1,0)) = 1 or trunc((-1,-1)) = 1 or trunc((-1,1)) = 1 or trunc((-2,-2)) = 1 or trunc((-2,-1)) = 1 or trunc((-2,0)) = 1 or trunc((-2,1)) = 1 or trunc((-2,2)) = 1 ) }

rule : { 2 }   100 { (0,1) = 2.3 and (0,0) = 0 }
rule : { 2.3 } 100 { (0,0) = 2.3 and ( (0,-2) = 1.4 or (0,-1) != 0 or (-1,-1) = 1.1 or (1,-1) = 1.2 ) }
rule : { 2.3 } 100 { (0,0) = 2 and ( trunc((0,-1)) = 1 or trunc((-1,-2)) = 1 or trunc((0,-2)) = 1 or trunc((1,-2)) = 1 ) }

rule : { 2 }   100 { (0,-1) = 2.4 and (0,0) = 0 }
rule : { 2.4 } 100 { (0,0) = 2.4 and ( (0,2) = 1.3 or (0,1) != 0 or (-1,1) = 1.1 or (1,1) = 1.2 ) }
rule : { 2.4 } 100 { (0,0) = 2 and ( trunc((0,1)) = 1 or trunc((-1,2)) = 1 or trunc((0,2)) = 1 or trunc((1,2)) = 1 ) }


rule : { 3 }   100 { (-1,0) = 3.1 and (0,0) = 0 }
rule : { 3.1 } 100 { (0,0) = 3.1 and ( (2,0) = 1.2 or (2,0) = 2.2 or (1,0) != 0 or (1,1) = 1.4 or (1,1) = 2.4 or (1,-1) = 1.3 or (1,-1) = 2.3 ) }
rule : { 3.1 } 100 { (0,0) = 3 and ( trunc((1,0)) = 2 or trunc((1,-1)) = 2 or trunc((1,1)) = 2 or trunc((2,-2)) = 2 or trunc((2,-1)) = 2 or trunc((2,0)) = 2 or trunc((2,1)) = 2 or trunc((2,2)) = 2 ) }

rule : { 3 }   100 { (1,0) = 3.2 and (0,0) = 0 }
rule : { 3.2 } 100 { (0,0) = 3.2 and ( (-2,0) = 1.1 or (-2,0) = 2.1 or (-1,0) != 0 or (-1,1) = 1.4 or (-1,1) = 2.4 or (-1,-1) = 1.3 or (-1,-1) = 2.3 ) }
rule : { 3.2 } 100 { (0,0) = 3 and ( trunc((-1,0)) = 2 or trunc((-1,-1)) = 2 or trunc((-1,1)) = 2 or trunc((-2,-2)) = 2 or trunc((-2,-1)) = 2 or trunc((-2,0)) = 2 or trunc((-2,1)) = 2 or trunc((-2,2)) = 2 ) }

rule : { 3 }   100 { (0,1) = 3.3 and (0,0) = 0 }
rule : { 3.3 } 100 { (0,0) = 3.3 and ( (0,-2) = 1.4 or (0,-2) = 2.4 or (0,-1) != 0 or (-1,-1) = 1.1 or (-1,-1) = 2.1 or (1,-1) = 1.2 or (1,-1) = 2.2 ) }
rule : { 3.3 } 100 { (0,0) = 3 and ( trunc((0,-1)) = 2 or trunc((-1,-2)) = 2 or trunc((0,-2)) = 2 or trunc((1,-2)) = 2 ) }

rule : { 3 }   100 { (0,-1) = 3.4 and (0,0) = 0 }
rule : { 3.4 } 100 { (0,0) = 3.4 and ( (0,2) = 1.3 or (0,2) = 2.3 or (0,1) != 0 or (-1,1) = 1.1 or (-1,1) = 2.1 or (1,1) = 1.2 or (1,1) = 2.2 ) }
rule : { 3.4 } 100 { (0,0) = 3 and ( trunc((0,1)) = 2 or trunc((-1,2)) = 2 or trunc((0,2)) = 2 or trunc((1,2)) = 2 ) }



rule : { 4 }   100 { (-1,0) = 4.1 and (0,0) = 0 }
rule : { 4.1 } 100 { (0,0) = 4.1 and ( (2,0) = 1.2 or (2,0) = 2.2 or (2,0) = 3.2 or (1,0) != 0 or (1,1) = 1.4 or (1,1) = 2.4 or (1,1) = 3.4 or (1,-1) = 1.3 or (1,-1) = 2.3 or (1,-1) = 3.3 ) }
rule : { 4.1 } 100 { (0,0) = 4 and ( trunc((1,0)) = 3 or trunc((1,-1)) = 3 or trunc((1,1)) = 3 or trunc((2,-2)) = 3 or trunc((2,-1)) = 3 or trunc((2,0)) = 3 or trunc((2,1)) = 3 or trunc((2,2)) = 3 ) }

rule : { 4 }   100 { (1,0) = 4.2 and (0,0) = 0 }
rule : { 4.2 } 100 { (0,0) = 4.2 and ( (-2,0) = 1.1 or (-2,0) = 2.1 or (-2,0) = 3.1 or (-1,0) != 0 or (-1,1) = 1.4 or (-1,1) = 2.4 or (-1,1) = 3.4 or (-1,-1) = 1.3 or (-1,-1) = 2.3 or (-1,-1) = 3.3 ) }
rule : { 4.2 } 100 { (0,0) = 4 and ( trunc((-1,0)) = 3 or trunc((-1,-1)) = 3 or trunc((-1,1)) = 3 or trunc((-2,-2)) = 3 or trunc((-2,-1)) = 3 or trunc((-2,0)) = 3 or trunc((-2,1)) = 3 or trunc((-2,2)) = 3 ) }

rule : { 4 }   100 { (0,1) = 4.3 and (0,0) = 0 }
rule : { 4.3 } 100 { (0,0) = 4.3 and ( (0,-2) = 1.4 or (0,-2) = 2.4 or (0,-2) = 3.4 or (0,-1) != 0 or (-1,-1) = 1.1 or (-1,-1) = 2.1 or (-1,-1) = 3.1 or (1,-1) = 1.2 or (1,-1) = 2.2 or (1,-1) = 3.2 ) }
rule : { 4.3 } 100 { (0,0) = 4 and ( trunc((0,-1)) = 3 or trunc((-1,-2)) = 3 or trunc((0,-2)) = 3 or trunc((1,-2)) = 3 ) }

rule : { 4 }   100 { (0,-1) = 4.4 and (0,0) = 0 }
rule : { 4.4 } 100 { (0,0) = 4.4 and ( (0,2) = 1.3 or (0,2) = 2.3 or (0,2) = 3.3 or (0,1) != 0 or (-1,1) = 1.1 or (-1,1) = 2.1 or (-1,1) = 3.1 or (1,1) = 1.2 or (1,1) = 2.2 or (1,1) = 3.2 ) }
rule : { 4.4 } 100 { (0,0) = 4 and ( trunc((0,1)) = 3 or trunc((-1,2)) = 3 or trunc((0,2)) = 3 or trunc((1,2)) = 3 ) }


rule : { (0,0) }                 100 { (0,0) = trunc((0,0)) }
rule : 0                         100 { t }

# NOTAS
# Movimientos de la cada persona:
#
# x.1 = hacia abajo
# x.2 = hacia arriba
# x.3 = hacia derecha
# x.4 = hacia izquierda
#
# Personas:
#
# 1 = La que encabeza el trencito
# 2 a 4 = Otras Personas
