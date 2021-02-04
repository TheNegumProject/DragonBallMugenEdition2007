; _________________________________
;| Kraken by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================
[Defaults]
command.time=15
command.buffer.time=1

;====================<SINGLE BUTTON>====================
[Command]
name="a"
command=a
time=1
[Command]
name="b"
command=b
time=1
[Command]
name="c"
command=c
time=1
[Command]
name="x"
command=x
time=1
[Command]
name="y"
command=y
time=1
[Command]
name="z"
command=z
time=1
[Command]
name="start"
command=s
time=1

;====================<HOLD DIR>====================
[Command]
name="holdfwd"
command=/$F
time=1
[Command]
name="holdback"
command=/$B
time=1
[Command]
name="holdup"
command=/$U
time=1
[Command]
name="holddown"
command=/$D
time=1

;====================<HOLD BUTTON>====================
[Command]
name="holda"
command=/a
time=1
[Command]
name="holdb"
command=/b
time=1
[Command]
name="holdc"
command=/c
time=1
[Command]
name="holdx"
command=/x
time=1
[Command]
name="holdy"
command=/y
time=1
[Command]
name="holdz"
command=/z
time=1
[Command]
name="holdstart"
command=/s
time=1

;====================<DIR>====================
[Command]
name="fwd"
command=F
time=1
[Command]
name="back"
command=B
time=1
[Command]
name="up"
command=U
time=1
[Command]
name="down"
command=D
time=1

;====================<RELEASE DIR>====================
[Command]
name="rlsfwd"
command=~$F
time=1
[Command]
name="rlsback"
command=~$B
time=1
[Command]
name="rlsup"
command=~$U
time=1
[Command]
name="rlsdown"
command=~$D
time=1

;====================<RELEASE BUTTON>====================
[Command]
name="rlsx"
command=~x
time=1
[Command]
name="rlsy"
command=~y
time=1
[Command]
name="rlsz"
command=~z
time=1
[Command]
name="rlsa"
command=~a
time=1
[Command]
name="rlsb"
command=~b
time=1
[Command]
name="rlsc"
command=~c
time=1

;====================<DOUBLE TAP>====================
[Command]
name="UU"
command=U,U
time=10
[Command]
name="DD"
command=D,D
time=10
[Command]
name="FF"
command=F,F
time=10
[Command]
name="BB"
command=B,B
time=10

;====================<2/3 BUTTON COMBINATION>====================
[Command]
name="recovery"
command=x+y
time=1
[Command]
name="recovery"
command=x+z
time=1
[Command]
name="recovery"
command=y+z
time=1


;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[Statedef -1]

[State -1, Dive]
type=changestate
value=210
trigger1=roundstate=2&&alive&&(stateno=0||stateno=25)
trigger1=command="DD"&&(var(10)<8||var(11)<2)

[State -1, No Bubbles]
type=changestate
value=201
trigger1=roundstate=2&&alive&&(stateno=0||stateno=25)
trigger1=(command="x"||command="a")&&numhelper(205)

[State -1, Bubbles]
type=changestate
value=200
trigger1=roundstate=2&&alive&&(stateno=0||stateno=25)
trigger1=(command="x"||command="a")&&!numhelper(205)

[State -1, Dash]
type=changestate
value=100
trigger1=roundstate=2&&alive&&(stateno=0||stateno=25)
trigger1=(command="FF"||command="BB")

[State -1, Walk]
type=changestate
trigger1=roundstate=2&&alive&&stateno=0
trigger1=(command="holdfwd"+command="holdback")=1
value=25

[State -1, Taunt]
type=changestate
value=195
trigger1=roundstate=2&&alive&&(stateno=0||stateno=25)
trigger1=command="start"