; _________________________________
;| Kraken by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;====================<STANDING>====================
[Statedef 0]
type=S
physics=S
sprpriority=-6

[State 0, safety]
type=changestate
trigger1=ishelper(300)
value=300
[State 0, safety]
type=changestate
trigger1=ishelper(400)
value=400

[State 0, anim]
type=changeanim
trigger1=anim!=0
value=0
[State 0, pos]
type=posset
trigger1=1
y=0
[State 0, stop]
type=velset
trigger1=abs(vel x)<.5
x=0
[State 0, dead]
type=changestate
trigger1=!alive
value=5150


;====================<HIT/PUSH CONTROLLER>====================
[Statedef 1]
type=S
physics=N
movetype=I
anim=0

[State 1, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=2
ignorehitpause=1
[State 1, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 1, push]
type=playerpush
trigger1=1
value=(root,var(2))

[State 1, assert]
type=assertspecial
trigger1=1
flag=invisible
[State 1, bind]
type=bindtoroot
trigger1=1
time=-1
facing=1
[State 1, offset]
type=offset
trigger1=1
y=-16

[State 1, anim]
type=changeanim
trigger1=playerIDexist(root,ID)
value=root,anim
elem=root,animelemno(0)


[Statedef 2]
type=A
physics=N
movetype=H

[State 2, push]
type=playerpush
trigger1=1
value=(root,var(2))

[State 2, assert]
type=assertspecial
trigger1=1
flag=invisible
[State 2, bind]
type=bindtoroot
trigger1=1
time=-1
facing=1
[State 2, offset]
type=offset
trigger1=1
y=-16

[State 2, damage]
type=parentvarset
trigger1=!time
var(1)=-gethitvar(damage)
ignorehitpause=1

[State 2, end]
type=changestate
trigger1=time
value=1
ignorehitpause=1


;====================<WALKING>====================
[Statedef 25]
type=S
physics=S
sprpriority=-6
[State 25, vel]
type=velset
trigger1=1
x=ifelse(command="holdfwd",const(velocity.walk.fwd.x),ifelse(command="holdback",const(velocity.walk.back.x),vel x))
[State 25, end]
type=changestate
trigger1=(command="holdfwd"+command="holdback")!=1
value=0


;====================<DASHING>====================
[Statedef 100]
type=S
physics=S
ctrl=0
sprpriority=-6

[State 100, vel]
type=velset
trigger1=!time&&command="FF"
x=const(velocity.run.fwd.x)
[State 100, vel]
type=velset
trigger1=!time&&command="BB"
x=const(velocity.run.back.x)

[State 100, end]
type=changestate
trigger1=time>=24
value=0


;====================<AQUA-BREATH>====================
[Statedef 200]
type=S
physics=S
movetype=A
ctrl=0
sprpriority=-6
[State 200, anim]
type=changeanim
trigger1=anim!=200
value=200

[State 200, dir]
type=varset
trigger1=!time
fvar(0)=0

[State 200, dir]
type=varadd
trigger1=animelemtime(2)>=0
trigger1=command="holdfwd"&&command!="holdback"
trigger1=fvar(0)<3
fvar(0)=.075
[State 200, dir]
type=varadd
trigger1=animelemtime(2)>=0
trigger1=command="holdback"&&command!="holdfwd"
trigger1=fvar(0)>-3
fvar(0)=-.075

[State 200, snd]
type=playsnd
trigger1=(animelemtime(2)>=0)&&!(animelemtime(2)%16)
value=0,0
channel=2

[State 200, bubble]
type=varset
trigger1=1
fvar(1)=.75+(random/2000.0)

[State 200, bubble]
type=helper
trigger1=(animelemtime(2)>=0)&&!(animelemtime(2)%8)
helpertype=normal
stateno=205
ID=205
name="Bubble"
postype=p1
pos=52,-38
size.xscale=fvar(1)
size.yscale=fvar(1)
ownpal=1

[State 200, end]
type=changestate
trigger1=!animtime
trigger2=animelemtime(2)>=48
trigger2=roundstate!=2||(command="x"||command="a")
value=0


;-----Fail-----
[Statedef 201]
type=S
physics=S
movetype=A
ctrl=0
sprpriority=-6
[State 201, anim]
type=changeanim
trigger1=anim!=201
value=201

[State 201, air]
type=explod
trigger1=animelem=2
anim=f120
sprpriority=-2
postype=p1
pos=56,-24
vel=1,0
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 201, end]
type=changestate
trigger1=!animtime
value=0


;====================<BUBBLE HELPER>====================
[Statedef 205]
type=A
movetype=A
ctrl=0
sprpriority=4

[State 205, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
slot=0
stateno=206
ignorehitpause=1
[State 205, hitby]
type=hitby
trigger1=!movecontact
value=SCA,AA,AP
time=-1
ignorehitpause=1
[State 205, nothitby]
type=nothitby
trigger1=movecontact
value=SCA
time=-1
ignorehitpause=1

[State 205, anim]
type=changeanim
trigger1=anim!=205
value=205

[State 205, vel]
type=varset
trigger1=!time
fvar(0)=2+(random/500.0)+(root,fvar(0))

[State 205, vel]
type=velset
trigger1=animelemtime(4)<0
x=(fvar(0)*.975**animelemtime(1))
[State 205, vel]
type=velset
trigger1=animelemtime(4)>=0
x=(fvar(0)*.975**animelemtime(1))+cos(animelemtime(1)/8.0*pi)*3

[State 205, vel]
type=velset
trigger1=animelem=1
y=-2-(random/1000.0)
[State 205, vel]
type=veladd
trigger1=animelemtime(4)<0
y=.25
[State 205, vel]
type=veladd
trigger1=animelemtime(4)>=0&&vel y>-3
y=-.25

[State 205, reflectionvar]
type=varset
trigger1=sysvar(3)!=-123000
sysvar(3)=-123000

[State 205, hit]
type=hitdef
trigger1=!movecontact
attr=S,SP
hitflag=MAF
guardflag=MA
priority=1,Hit
damage=20,4
getpower=0,0
givepower=35,35
pausetime=0,8
guard.pausetime=0,4
sparkno=2
guard.sparkno=40
sparkxy=-10,0
hitsound=5,2
guardsound=6,0
animtype=Up
air.animtype=Up
ground.type=Low
air.type=Low
ground.hittime=24
ground.slidetime=24
ground.velocity=0,-9
ground.cornerpush.veloff=0
air.hittime=24
air.velocity=0,-9
air.cornerpush.veloff=0
guard.velocity=-15
guard.dist=root,const(size.proj.attack.dist)
airguard.velocity=-7.5,-1.5
yaccel=.5
fall=0
fall.recover=1
envshake.time=14
envshake.ampl=4
p1sprpriority=4

[State 205, hit]
type=hitdef
trigger1=movecontact
attr=S,SP
hitflag=
sparkxy=-10,0
guard.dist=root,const(size.proj.attack.dist)

[State 205, end]
type=destroyself
trigger1=frontedgedist<-40||backedgedist<-40
trigger2=p2dist y>=0&&screenpos y<-40

[Statedef 206]
type=A
movetype=I
ctrl=0
velset=0,0
sprpriority=4
[State 206, nothitby]
type=nothitby
trigger1=1
value=SCA
time=-1
ignorehitpause=1
[State 206, trans]
type=trans
trigger1=1
trans=addalpha
alpha=256-(time*16),256
ignorehitpause=1
[State 206, end]
type=destroyself
trigger1=time>=16


;====================<DIVE>====================
[Statedef 210]
type=S
physics=S
movetype=A
ctrl=0
sprpriority=-6
[State 210, anim]
type=changeanim
trigger1=anim!=210
value=210

[State 210, pos]
type=posset
trigger1=animelemtime(2)>=0
y=6*animelemtime(2)
[State 210, pos]
type=posset
trigger1=pos y>=240
y=240

[State 210, snd]
type=playsnd
trigger1=animelem=2
value=2,2
channel=1

[State 210, water]
type=explod
trigger1=animelem=2
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+20
[State 210, water]
type=explod
trigger1=animelem=2
anim=510
ID=510
sprpriority=-3
postype=p1
pos=-40,-ceil(pos y)+16
[State 210, water]
type=explod
trigger1=animelem=2
anim=510
ID=510
sprpriority=-3
postype=p1
pos=40,-ceil(pos y)+16
[State 210, water]
type=explod
trigger1=animelem=2
anim=510
ID=510
sprpriority=-6
postype=p1
pos=-25,-ceil(pos y)+8
[State 210, water]
type=explod
trigger1=animelem=2
anim=510
ID=510
sprpriority=-6
postype=p1
pos=25,-ceil(pos y)+8

[State 210, end]
type=changestate
trigger1=pos y>=240
value=211


;-----Submerged-----
[Statedef 211]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=-6
[State 211, anim]
type=changeanim
trigger1=anim!=211
value=211

[State 211, pos]
type=posset
trigger1=1
y=240
[State 211, turn]
type=turn
trigger1=p2dist x<0

[State 211, vel]
type=velset
trigger1=command="holdfwd"&&command!="holdback"
x=3
[State 211, vel]
type=velset
trigger1=command="holdback"&&command!="holdfwd"
x=-3

[State -1, Spawn Arm]
type=helper
trigger1=roundstate=2&&alive
trigger1=var(11)<2&&(numhelper(300)+numhelper(400))<4
helpertype=normal
stateno=400
ID=400
name="Arm"
postype=left
pos=20+(random%280),0
ownpal=1

[State -1, Spawn Leg]
type=helper
trigger1=roundstate=2&&alive
trigger1=var(10)<8&&(numhelper(300)+numhelper(400))<4
helpertype=normal
stateno=300
ID=300
name="Leg"
postype=left
pos=20+(random%280),0
ownpal=1

[State 211, end]
type=changestate
trigger1=roundstate!=2
trigger2=time>=20&&command="holdup"
trigger3=time>=60&&!numhelper(300)&&!numhelper(400)
trigger4=numenemy
trigger4=enemy,stateno=195
value=212


;-----Resurface-----
[Statedef 212]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=-6

[State 212, pos]
type=posset
trigger1=1
y=240-(12*time)
[State 212, pos]
type=posset
trigger1=pos y<=0
y=0

[State 212, anim]
type=changeanim
trigger1=anim!=212
value=212

[State 212, snd]
type=playsnd
trigger1=!time
value=2,2
channel=1

[State 212, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+20
[State 212, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-3
postype=p1
pos=-40,-ceil(pos y)+16
[State 212, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-3
postype=p1
pos=40,-ceil(pos y)+16
[State 212, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-6
postype=p1
pos=-25,-ceil(pos y)+8
[State 212, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-6
postype=p1
pos=25,-ceil(pos y)+8

[State 212, hit]
type=hitdef
trigger1=!time
attr=C,SA
hitflag=MAFD
guardflag=MA
priority=7,Hit
damage=60,10
getpower=0,0
pausetime=0,10
sparkno=3
guard.sparkno=40
sparkxy=-10,-128
hitsound=5,3
guardsound=6,0
animtype=Up
air.animtype=Up
ground.type=High
air.type=Low
ground.hittime=16
ground.slidetime=16
ground.velocity=0,-16
ground.cornerpush.veloff=0
air.hittime=32
air.velocity=0,-18
airguard.velocity=-7.5,-1.5
air.cornerpush.veloff=0
down.velocity=0,-16
yaccel=.5
fall=0
fall.recover=1
sprpriority=-6

[State 212, end]
type=changestate
trigger1=pos y<=0
value=213


;-----Recovery-----
[Statedef 213]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=-6
[State 213, pos]
type=posset
trigger1=!time
y=0
[State 213, anim]
type=changeanim
trigger1=pos y<=0
trigger1=anim!=0
value=0
[State 213, end]
type=changestate
trigger1=time>=30
value=0


;==============================================================================================
;===========================================<LEG>==============================================
;==============================================================================================

;====================<SURFACE>====================
[Statedef 300]
type=S
physics=S
movetype=A
anim=300
ctrl=0
velset=0,0
sprpriority=-5
facep2=1
[State 300, limbcount]
type=parentvaradd
trigger1=!time
var(10)=1

[State 300, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=390
ignorehitpause=1
[State 300, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 300, offset]
type=offset
trigger1=1
y=-8

[State 300, pos]
type=posset
trigger1=1
y=120-(6*time)
[State 300, aimed]
type=posset
trigger1=!time
trigger1=prevstateno=330&&numenemy
x=ceil(enemy,pos x)

[State 300, water]
type=playsnd
trigger1=!time
value=2,(random%3)
channel=1
[State 300, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8

[State 300, hit]
type=hitdef
trigger1=!time
attr=C,NA
hitflag=MAFD
guardflag=MA
priority=7,Hit
damage=30,0
getpower=0,0
pausetime=0,10
sparkno=2
guard.sparkno=40
sparkxy=-10,-102
hitsound=5,2
guardsound=6,0
animtype=Up
air.animtype=Up
ground.type=High
air.type=Low
ground.hittime=12
ground.slidetime=12
ground.velocity=0,-12
ground.cornerpush.veloff=0
air.hittime=24
air.velocity=0,-12
airguard.velocity=-7.5,-1.5
air.cornerpush.veloff=0
down.velocity=0,-12
yaccel=.5
fall=0
fall.recover=1
sprpriority=-5

[State 300, end]
type=changestate
trigger1=time>=20
value=301


[Statedef 301]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 301, anim]
type=changeanim
trigger1=anim!=310
value=310

[State 301, offset]
type=offset
trigger1=1
y=-8
[State 301, pos]
type=posset
trigger1=1
y=0

[State 301, end]
type=changestate
trigger1=time>=30
value=310
[State 301, die]
type=changestate
trigger1=!(root,alive)||var(0)>=200
value=395


;====================<IDLE>====================
[Statedef 310]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 310, anim]
type=changeanim
trigger1=anim!=310
value=310

[State 310, offset]
type=offset
trigger1=1
y=-8
[State 310, turn]
type=turn
trigger1=p2dist x<0

[State 310, pos]
type=posset
trigger1=1
y=0
[State 310, vel]
type=velset
trigger1=1
x=0
y=0

[State 310, teleport]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive
trigger1=(p2dist x!=[-172,172])
value=330

[State 310, attack]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive&&(p2statetype!=L)&&(p2movetype!=H)
trigger1=(p2dist x=[-86,86])&&(p2dist y=[-108,108])&&(enemynear,vel y>=-2)
value=320

[State 310, walk]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive&&(p2dist x!=[-86,86])
value=315

[State 310, die]
type=changestate
trigger1=!(root,alive)||var(0)>=200
value=395


;====================<MOVING>====================
[Statedef 315]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 315, anim]
type=changeanim
trigger1=anim!=310
value=310

[State 315, offset]
type=offset
trigger1=1
y=-8
[State 315, pos]
type=posset
trigger1=1
y=0

[State 315, turn]
type=turn
trigger1=p2dist x<0

[State 315, vel]
type=velset
trigger1=1
x=ifelse(p2dist x>=0,1.5,-1.5)
[State 315, vel]
type=velset
trigger1=(pos x!=[-80,400])
x=ifelse(p2dist x>=0,2,-2)

[State 315, end]
type=changestate
trigger1=p2dist x=[-86,86]
trigger2=!numenemy||roundstate!=2
trigger3=numenemy
trigger3=!(enemy,alive)
value=310

[State 315, die]
type=changestate
trigger1=!(root,alive)||var(0)>=200
value=395


;====================<ATTACK>====================
[Statedef 320]
type=S
physics=S
movetype=A
anim=320
ctrl=0
velset=0,0
sprpriority=-5
juggle=15

[State 320, offset]
type=offset
trigger1=1
y=-8

[State 320, snd]
type=playsnd
trigger1=animelem=2
value=3,0

[State 320, hit]
type=hitdef
trigger1=animelem=3
attr=S,NA
hitflag=MAF
guardflag=MA
priority=4,Hit
damage=40,0
getpower=0,0
pausetime=10,10
sparkno=2
guard.sparkno=40
sparkxy=-10,-24
hitsound=5,2
guardsound=6,0
animtype=Medium
air.animtype=Medium
ground.type=High
air.type=Low
ground.hittime=12
ground.slidetime=12
ground.velocity=-8,0
ground.cornerpush.veloff=-15
air.hittime=12
air.velocity=-5,-5
airguard.velocity=-7.5,-1.5
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
sprpriority=-5

[State 320, sts]
type=statetypeset
trigger1=animelemtime(5)>=0
movetype=I
[State 320, end]
type=changestate
trigger1=!animtime
value=310

[State 320, die]
type=changestate
trigger1=!(root,alive)||var(0)>=200
value=395


;====================<DIVE>====================
[Statedef 330]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 330, anim]
type=changeanim
trigger1=anim!=310
value=310

[State 330, offset]
type=offset
trigger1=1
y=-8

[State 330, snd]
type=playsnd
trigger1=!time
value=2,0
channel=1
[State 330, water]
type=explod
trigger1=!time
anim=511
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8
[State 330, water]
type=explod
trigger1=!time
anim=511
ID=510
sprpriority=-3
postype=p1
pos=-35,-ceil(pos y)+8

[State 330, pos]
type=posset
trigger1=1
y=4*time

[State 330, end]
type=changestate
trigger1=time>=60
value=300


;====================<GET HIT>====================
[Statedef 390]
type=S
physics=S
movetype=H
sprpriority=-5
[State 390, anim]
type=changeanim
trigger1=1
value=390
[State 390, offset]
type=offset
trigger1=1
y=-8

[State 390, life]
type=lifeset
trigger1=1
value=lifemax

[State 390, flash]
type=palfx
trigger1=!time
time=8
add=255,255,255
sinadd=-255,-255,-255,32
persistent=0

[State 390, life]
type=varadd
trigger1=gethitvar(damage)
var(0)=gethitvar(damage)
persistent=0

[State 390, end]
type=changestate
trigger1=hitshakeover
value=ifelse(var(0)>=200,395,391)


;-----Sliding-----
[Statedef 391]
type=S
physics=N
movetype=I
sprpriority=-5
[State 391, anim]
type=changeanim
trigger1=1
value=391
[State 391, offset]
type=offset
trigger1=1
y=-8

[State 391, life]
type=lifeset
trigger1=1
value=lifemax

[State 391, vel]
type=hitvelset
trigger1=!time
x=1
y=0
[State 391, vel]
type=velmul
trigger1=1
x=.85

[State 391, end]
type=changestate
trigger1=hitover
value=ifelse(var(0)>=200,395,310)


;====================<KILLED>====================
[Statedef 395]
type=S
physics=S
movetype=I
anim=395
ctrl=0
velset=0,0
sprpriority=-5

[State 395, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=390
ignorehitpause=1
[State 395, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 395, offset]
type=offset
trigger1=1
y=-8

[State 395, water]
type=explod
trigger1=time=19
anim=511
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8
[State 395, water]
type=explod
trigger1=time=19
anim=511
ID=510
sprpriority=-3
postype=p1
pos=-35,-ceil(pos y)+8

[State 395, pos]
type=posset
trigger1=time>=20
y=2*(time-20)

[State 395, end]
type=destroyself
trigger1=time>=80


;==============================================================================================
;===========================================<ARM>==============================================
;==============================================================================================

;====================<SURFACE>====================
[Statedef 400]
type=S
physics=S
movetype=A
anim=400
ctrl=0
velset=0,0
facep2=1
sprpriority=-5
[State 400, limbcount]
type=parentvaradd
trigger1=!time
var(11)=1

[State 400, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=490
ignorehitpause=1
[State 400, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 400, offset]
type=offset
trigger1=1
y=-8
[State 400, turn]
type=turn
trigger1=p2dist x<0

[State 400, pos]
type=posset
trigger1=1
y=120-(6*time)

[State 400, water]
type=playsnd
trigger1=!time
value=2,(random%3)
channel=1
[State 400, water]
type=explod
trigger1=!time
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8

[State 400, hit]
type=hitdef
trigger1=!time
attr=C,NA
hitflag=MAFD
guardflag=MA
priority=7,Hit
damage=30,0
getpower=0,0
pausetime=0,10
sparkno=2
guard.sparkno=40
sparkxy=-10,-158
hitsound=5,2
guardsound=6,0
animtype=Up
air.animtype=Up
ground.type=High
air.type=Low
ground.hittime=12
ground.slidetime=12
ground.velocity=0,-12
ground.cornerpush.veloff=0
air.hittime=24
air.velocity=0,-12
airguard.velocity=-7.5,-1.5
air.cornerpush.veloff=0
down.velocity=0,-12
yaccel=.5
fall=0
fall.recover=1
sprpriority=-5

[State 400, end]
type=changestate
trigger1=time>=20
value=401


[Statedef 401]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 401, anim]
type=changeanim
trigger1=anim!=410
value=410

[State 401, offset]
type=offset
trigger1=1
y=-8
[State 401, pos]
type=posset
trigger1=1
y=0

[State 401, end]
type=changestate
trigger1=time>=30
value=410
[State 401, die]
type=changestate
trigger1=!(root,alive)||var(0)>=300
value=495


;====================<IDLE>====================
[Statedef 410]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 410, anim]
type=changeanim
trigger1=anim!=410
value=410

[State 410, offset]
type=offset
trigger1=1
y=-8
[State 410, turn]
type=turn
trigger1=p2dist x<0

[State 410, pos]
type=posset
trigger1=1
y=0
[State 410, vel]
type=velset
trigger1=1
x=0
y=0

[State 410, teleport]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive
trigger1=(p2dist x!=[-240,240])
value=430

[State 410, attack]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive&&(p2statetype!=L)&&(p2movetype!=H)
trigger1=(p2dist x=[-120,120])&&(p2dist y=[-135,135])&&(enemynear,vel y>=-2)
value=420

[State 410, walk]
type=changestate
trigger1=numenemy&&roundstate=2
trigger1=enemy,alive&&(p2dist x!=[-120,120])
value=415

[State 410, die]
type=changestate
trigger1=!(root,alive)||var(0)>=300
value=495


;====================<MOVING>====================
[Statedef 415]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 415, anim]
type=changeanim
trigger1=anim!=410
value=410

[State 415, offset]
type=offset
trigger1=1
y=-8
[State 415, turn]
type=turn
trigger1=p2dist x<0
[State 415, pos]
type=posset
trigger1=1
y=0
[State 415, vel]
type=velset
trigger1=1
x=ifelse(p2dist x>=0,1,-1)
[State 415, vel]
type=velset
trigger1=(pos x!=[-80,400])
x=ifelse(p2dist x>=0,2,-2)

[State 415, end]
type=changestate
trigger1=p2dist x=[-120,120]
trigger2=!numenemy||roundstate!=2
trigger3=numenemy
trigger3=!(enemy,alive)
value=410

[State 415, die]
type=changestate
trigger1=!(root,alive)||var(0)>=300
value=495


;====================<ATTACK>====================
[Statedef 420]
type=S
physics=S
movetype=A
anim=420
ctrl=0
velset=0,0
sprpriority=-5
juggle=15

[State 420, offset]
type=offset
trigger1=1
y=-8
[State 420, vel]
type=velset
trigger1=animelem=5
x=6

[State 420, snd]
type=playsnd
trigger1=animelem=4
value=3,1
channel=1

[State 420, hit]
type=hitdef
trigger1=animelem=5
attr=S,NA
hitflag=MAF
guardflag=MA
priority=4,Hit
damage=60,0
getpower=0,0
pausetime=10,10
sparkno=3
guard.sparkno=40
sparkxy=-10,-52
hitsound=5,3
guardsound=6,0
animtype=Back
air.animtype=Back
ground.type=High
air.type=Low
ground.hittime=12
ground.slidetime=12
ground.velocity=-8,-6
guard.velocity=-12
ground.cornerpush.veloff=0
air.hittime=12
air.velocity=-8,-6
airguard.velocity=-7.5,-1.5
air.cornerpush.veloff=0
yaccel=.5
fall=0
fall.recover=1
sprpriority=-5

[State 420, sts]
type=statetypeset
trigger1=animelemtime(7)>=0
movetype=I
[State 420, end]
type=changestate
trigger1=!animtime
value=410

[State 410, die]
type=changestate
trigger1=!(root,alive)||var(0)>=300
value=495


;====================<DIVE>====================
[Statedef 430]
type=S
physics=N
movetype=I
ctrl=0
velset=0,0
sprpriority=-5
[State 430, anim]
type=changeanim
trigger1=anim!=410
value=410

[State 430, offset]
type=offset
trigger1=1
y=-8

[State 430, snd]
type=playsnd
trigger1=!time
value=2,0
channel=1
[State 430, water]
type=explod
trigger1=!time
anim=511
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8
[State 430, water]
type=explod
trigger1=!time
anim=511
ID=510
sprpriority=-3
postype=p1
pos=-35,-ceil(pos y)+8

[State 430, pos]
type=posset
trigger1=1
y=4*time

[State 430, end]
type=changestate
trigger1=time>=60
value=300


;====================<GET HIT>====================
[Statedef 490]
type=S
physics=S
movetype=H
sprpriority=-5
[State 490, anim]
type=changeanim
trigger1=1
value=490
[State 490, offset]
type=offset
trigger1=1
y=-8

[State 490, life]
type=lifeset
trigger1=1
value=lifemax

[State 490, flash]
type=palfx
trigger1=!time
time=8
add=255,255,255
sinadd=-255,-255,-255,32
persistent=0

[State 490, life]
type=varadd
trigger1=gethitvar(damage)
var(0)=gethitvar(damage)
persistent=0

[State 490, end]
type=changestate
trigger1=hitshakeover
value=ifelse(var(0)>=300,495,491)


;-----Sliding-----
[Statedef 491]
type=S
physics=N
movetype=I
sprpriority=-5
[State 491, anim]
type=changeanim
trigger1=1
value=491
[State 491, offset]
type=offset
trigger1=1
y=-8

[State 491, life]
type=lifeset
trigger1=1
value=lifemax

[State 491, vel]
type=hitvelset
trigger1=!time
x=1
y=0
[State 491, vel]
type=velmul
trigger1=1
x=.85

[State 491, end]
type=changestate
trigger1=hitover
value=ifelse(var(0)>=300,495,410)


;====================<KILLED>====================
[Statedef 495]
type=S
physics=S
movetype=I
anim=495
ctrl=0
velset=0,0
sprpriority=-5

[State 495, hitoverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=490
ignorehitpause=1
[State 495, hitby]
type=hitby
trigger1=1
value=SCA,AA,AP
time=-1
ignorehitpause=1

[State 495, offset]
type=offset
trigger1=1
y=-8

[State 495, water]
type=explod
trigger1=time=19
anim=511
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+8
[State 495, water]
type=explod
trigger1=time=19
anim=511
ID=510
sprpriority=-3
postype=p1
pos=-35,-ceil(pos y)+8

[State 495, pos]
type=posset
trigger1=time>=20
y=2*(time-20)

[State 495, end]
type=destroyself
trigger1=time>=80


;====================<WATER>====================
[Statedef 500]
movetype=I
physics=N
[State 500, nhb]
type=nothitby
trigger1=1
time=-1
value=SCA
ignorehitpause=1
[State 500, anim]
type=changeanim
trigger1=anim!=999
value=999
[State 500, assert]
type=assertspecial
trigger1=1
flag=globalnoshadow

[State 500, pos]
type=posset
trigger1=1
y=0
[State 500, pos]
type=posadd
trigger1=pos x>128
x=-128
[State 500, pos]
type=posadd
trigger1=pos x<-128
x=128

[State 500, water off]
type=varset
trigger1=numenemy
trigger1=enemy,name="Shining Force 2 Kraken"&&enemy,authorname="Phantom.of.the.Server"&&(enemy,ID<root,ID)
trigger2=numpartner
trigger2=partner,name="Shining Force 2 Kraken"&&partner,authorname="Phantom.of.the.Server"&&(partner,ID<root,ID)
trigger3=numenemy
trigger3=enemy,name="Killer Whale"&&enemy,authorname="N64Mario"
trigger4=numpartner
trigger4=partner,name="Killer Whale"&&partner,authorname="N64Mario"
var(0)=1

[State 500, water loop]
type=playsnd
trigger1=!var(0)
value=0,4
channel=1
loop=1
persistent=0
[State 500, water loop]
type=stopsnd
trigger1=var(0)
channel=1
persistent=0

[State 500, planks off 1]
type=varset
triggerall=numenemy
trigger1=enemy(0),name="Shining Force 2 Kraken"&&enemy(0),authorname="Phantom.of.the.Server"
trigger2=enemy(0),name="Apocalypse"&&enemy(0),authorname="N64Mario"
trigger3=enemy(0),name="Apocalypse"&&enemy(0),authorname="OnslaughtX & Kung Fu Man"
trigger4=enemy(0),name="Killer Whale"&&enemy(0),authorname="N64Mario"
var(1)=1
[State 500, planks off 2]
type=varset
triggerall=numenemy>=2
trigger1=enemy(1),name="Shining Force 2 Kraken"&&enemy(1),authorname="Phantom.of.the.Server"
trigger2=enemy(1),name="Apocalypse"&&enemy(1),authorname="N64Mario"
trigger3=enemy(1),name="Apocalypse"&&enemy(1),authorname="OnslaughtX & Kung Fu Man"
trigger4=enemy(1),name="Killer Whale"&&enemy(1),authorname="N64Mario"
var(2)=1
[State 500, planks off 3]
type=varset
triggerall=numpartner
trigger1=partner,name="Shining Force 2 Kraken"&&partner,authorname="Phantom.of.the.Server"
trigger2=partner,name="Apocalypse"&&partner,authorname="N64Mario"
trigger3=partner,name="Apocalypse"&&partner,authorname="OnslaughtX & Kung Fu Man"
trigger4=partner,name="Killer Whale"&&partner,authorname="N64Mario"
var(3)=1

[State 500, planks]
type=explod
trigger1=!numexplod(550)&&numenemy>=1&&!var(1)
anim=550
ID=550
sprpriority=-3
postype=left
pausemovetime=2147483647
supermovetime=2147483647
ownpal=1
[State 500, planks]
type=explod
trigger1=!numexplod(551)&&numenemy>=2&&!var(2)
anim=550
ID=551
sprpriority=-3
postype=left
ownpal=ifelse(random<500,1,-1)
pausemovetime=2147483647
supermovetime=2147483647
ownpal=1
[State 500, planks]
type=explod
trigger1=!numexplod(552)&&numpartner&&!var(3)
anim=550
ID=552
sprpriority=-3
postype=left
ownpal=ifelse(random<500,1,-1)
pausemovetime=2147483647
supermovetime=2147483647
ownpal=1

[State 500, water]
type=explod
trigger1=!numexplod(500)&&!var(0)
anim=500
ID=500
sprpriority=-4
postype=p1
pos=0,0
bindtime=-1
removetime=-1
[State 500, water]
type=explod
trigger1=!numexplod(501)&&!var(0)
anim=501
ID=501
sprpriority=-7
postype=p1
pos=0,-18
bindtime=-1
removetime=-1
scale=1,.75
[State 500, water]
type=explod
trigger1=!numexplod(502)&&!var(0)
anim=501
ID=502
sprpriority=-7
postype=p1
pos=0,-30
bindtime=-1
removetime=-1
scale=1,.5
[State 500, water]
type=explod
trigger1=!numexplod(503)&&!var(0)
anim=501
ID=503
sprpriority=-4
postype=p1
pos=0,24
bindtime=-1
removetime=-1
[State 500, water]
type=explod
trigger1=!numexplod(504)&&!var(0)
anim=501
ID=504
sprpriority=-4
postype=p1
pos=0,48
bindtime=-1
removetime=-1

[State 500, planks]
type=removeexplod
trigger1=numexplod(550)&&(!numenemy||var(1))
ID=550
[State 500, planks]
type=removeexplod
trigger1=numexplod(551)&&(numenemy<2||var(2))
ID=551
[State 500, planks]
type=removeexplod
trigger1=numexplod(551)&&(!numpartner||var(3))
ID=552

[State 500, planks]
type=modifyexplod
trigger1=numexplod(550)&&numenemy
ID=550
postype=left
pos=160+ceil(enemy(0),pos x),ceil(screenpos y)
[State 500, planks]
type=modifyexplod
trigger1=numexplod(551)&&numenemy>=2
ID=551
postype=left
pos=160+ceil(enemy(1),pos x),ceil(screenpos y)
[State 500, planks]
type=modifyexplod
trigger1=numexplod(552)&&numpartner
ID=552
postype=left
pos=160+ceil(partner,pos x),ceil(screenpos y)

[State 500, planks]
type=modifyexplod
trigger1=numexplod(550)&&numenemy
trigger1=(enemy(0),const(size.ground.front)+enemy(0),const(size.ground.back))>=34
ID=550
scale=(enemy(0),const(size.ground.front)+enemy(0),const(size.ground.back))/34.0
[State 500, planks]
type=modifyexplod
trigger1=numexplod(551)&&numenemy>=2
trigger1=(enemy(1),const(size.ground.front)+enemy(1),const(size.ground.back))>=34
ID=551
scale=(enemy(1),const(size.ground.front)+enemy(1),const(size.ground.back))/34.0
[State 500, planks]
type=modifyexplod
trigger1=numexplod(552)&&numpartner
trigger1=(partner,const(size.ground.front)+partner,const(size.ground.back))>=34
ID=552
scale=(partner,const(size.ground.front)+partner,const(size.ground.back))/34.0

[State 500, land]
type=playsnd
trigger1=numexplod(550)&&numenemy
trigger1=(enemy(0),time=1)
trigger1=enemy(0),stateno=52||enemy(0),stateno=106||enemy(0),stateno=5100||enemy(0),stateno=5110
value=0,2
abspan=ceil(enemy(0),pos x)
[State 500, land]
type=playsnd
trigger1=numexplod(551)&&numenemy>=2
trigger1=(enemy(1),time=1)
trigger1=enemy(1),stateno=52||enemy(1),stateno=106||enemy(1),stateno=5100||enemy(1),stateno=5110
value=0,2
abspan=ceil(enemy(1),pos x)
[State 500, land]
type=playsnd
trigger1=numexplod(552)&&numpartner
trigger1=(partner,time=1)
trigger1=partner,stateno=52||partner,stateno=106||partner,stateno=5100||partner,stateno=5110
value=0,2
abspan=ceil(partner,pos x)


;====================<5900>====================
[Statedef 5900]
type=A
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
value=0
[State 5900, varreset]
type=varrangeset
trigger1=!roundsexisted
fvalue=0

[State 5900, resetlimbs]
type=varset
trigger1=1
var(10)=0
[State 5900, resetlimbs]
type=varset
trigger1=1
var(11)=0

[State 5900,end]
type=changestate
trigger1=1
value=ifelse(roundno=1,190,0)


;====================<TIME OVER>====================
[Statedef 170]
physics=N
movetype=I
anim=170
ctrl=0
facep2=1
[State 170, snd]
type=playsnd
trigger1=!time
value=1,3

[Statedef 175]
physics=N
movetype=I
anim=170
ctrl=0
[State 175, snd]
type=playsnd
trigger1=!time
value=1,3



;====================<WIN>====================
[Statedef 180]
physics=N
movetype=I
anim=180
ctrl=0
facep2=1
[State 180, assert]
type=assertspecial
trigger1=time<=180
flag=roundnotover
[State 180, snd]
type=playsnd
trigger1=!time
value=1,(random%3)


;====================<INTRO>====================
[Statedef 190]
type=S
physics=S
movetype=I
anim=0
ctrl=0
velset=0,0
sprpriority=-5

[State 190, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
ignorehitpause=1
[State 190, assert]
type=assertspecial
trigger1=1
flag=intro

[State 190, pos]
type=posset
trigger1=time<90
y=240
[State 190, pos]
type=posset
trigger1=time>=90
y=240-(6*(time-90))
[State 190, pos]
type=posset
trigger1=time>=130
y=0

[State 190, pos]
type=envshake
trigger1=time<100&&!(time%6)
time=6
ampl=3

[State 190, water]
type=playsnd
trigger1=time=1
value=0,3
channel=1
[State 190, water]
type=playsnd
trigger1=time=100
value=2,2
channel=1

[State 190, water]
type=explod
trigger1=time=100
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+20
[State 190, water]
type=explod
trigger1=time=100
anim=510
ID=510
sprpriority=-3
postype=p1
pos=-40,-ceil(pos y)+16
[State 190, water]
type=explod
trigger1=time=100
anim=510
ID=510
sprpriority=-3
postype=p1
pos=40,-ceil(pos y)+16
[State 190, water]
type=explod
trigger1=time=100
anim=510
ID=510
sprpriority=-6
postype=p1
pos=-25,-ceil(pos y)+8
[State 190, water]
type=explod
trigger1=time=100
anim=510
ID=510
sprpriority=-6
postype=p1
pos=25,-ceil(pos y)+8

[State 190, end]
type=changestate
trigger1=time>=130
value=0


;====================<TAUNT>====================
[Statedef 195]
type=S
physics=S
movetype=I
velset=0,0
ctrl=0
sprpriority=-6
[State 195, anim]
type=changeanim
trigger1=anim!=195
value=195

[State 195, snd]
type=playsnd
trigger1=animelem=1||animelem=3
value=0,1
channel=0
[State 195, end]
type=changestate
trigger1=!animtime
value=0


;====================<DEAD>====================
[Statedef 5150]
type=S
physics=S
movetype=I
anim=5150
ctrl=0
velset=0,0
sprpriority=-6

[State 5150, safety]
type=changestate
trigger1=ishelper(300)
value=390
[State 5150, safety]
type=changestate
trigger1=ishelper(400)
value=490

[State 5150, nhb]
type=nothitby
trigger1=1
value=SCA
time=1
ignorehitpause=1

[State 5150, pos]
type=posset
trigger1=time<30
y=0
[State 5150, pos]
type=posset
trigger1=time>=30
y=(3*(time-30))
[State 5150, pos]
type=posset
trigger1=pos y>=240
y=240

[State 5150, shake]
type=envshake
trigger1=(time=[30,120])&&!(time%6)
time=6
ampl=3

[State 5150, water]
type=playsnd
trigger1=time=30
value=2,(random%3)

[State 5150, water]
type=explod
trigger1=time=30
anim=510
ID=510
sprpriority=-3
postype=p1
pos=0,-ceil(pos y)+20
[State 5150, water]
type=explod
trigger1=time=30
anim=510
ID=510
sprpriority=-3
postype=p1
pos=-40,-ceil(pos y)+16
[State 5150, water]
type=explod
trigger1=time=30
anim=510
ID=510
sprpriority=-3
postype=p1
pos=40,-ceil(pos y)+16
[State 5150, water]
type=explod
trigger1=time=30
anim=510
ID=510
sprpriority=-6
postype=p1
pos=-25,-ceil(pos y)+8
[State 5150, water]
type=explod
trigger1=time=30
anim=510
ID=510
sprpriority=-6
postype=p1
pos=25,-ceil(pos y)+8


;====================<CONTINUE>====================
[Statedef 5500]
physics=N
movetype=I
anim=0
ctrl=0
[State 5500, anim]
type=changeanim
trigger1=anim!=0
value=0


;====================<ERASE COMMON>====================
[Statedef 10]
[State 10, end]
type=changestate
trigger1=1
value=0
[Statedef 11]
[State 11, end]
type=changestate
trigger1=1
value=0
[Statedef 12]
[State 12, end]
type=changestate
trigger1=1
value=0

[Statedef 20]
[State 20, end]
type=changestate
trigger1=1
value=25

[Statedef 40]
[State 40, end]
type=changestate
trigger1=1
value=0
[Statedef 50]
[State 50, end]
type=changestate
trigger1=1
value=0
[Statedef 51]
[State 51, end]
type=changestate
trigger1=1
value=0
[Statedef 52]
[State 52, end]
type=changestate
trigger1=1
value=0

[Statedef 45]
[State 45, end]
type=changestate
trigger1=1
value=0

[Statedef 105]
[State 105, end]
type=changestate
trigger1=1
value=0


;====================<ERASE HITS>====================
[Statedef 5000]
movetype=H
[State 5000, safety]
type=changestate
trigger1=ishelper(300)
value=300
[State 5000, safety]
type=changestate
trigger1=ishelper(400)
value=400
[State 5000, override]
type=changestate
trigger1=1
value=0

[Statedef 5001]
movetype=H
[State 5001, override]
type=changestate
trigger1=1
value=0
[Statedef 5002]
movetype=H
[State 5002, override]
type=changestate
trigger1=1
value=0
[Statedef 5010]
movetype=H
[State 5010, override]
type=changestate
trigger1=1
value=0
[Statedef 5020]
movetype=H
[State 5020, override]
type=changestate
trigger1=1
value=0
[Statedef 5030]
movetype=H
[State 5030, override]
type=changestate
trigger1=1
value=0
[Statedef 5050]
movetype=H
[State 5050, override]
type=changestate
trigger1=1
value=0
[Statedef 5070]
movetype=H
[State 5070, override]
type=changestate
trigger1=1
value=0
[Statedef 5080]
movetype=H
[State 5080, override]
type=changestate
trigger1=1
value=0
[Statedef 5100]
movetype=H
[State 5100, override]
type=changestate
trigger1=1
value=0


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[Statedef -2]

[State -2, HitOverride]
type=hitoverride
trigger1=1
attr=SCA,AA,AP,AT
time=-1
stateno=5000
ignorehitpause=1
[State -2, NotHitBy]
type=nothitby
trigger1=1
value=SCA,AA,AP,AT
time=-1
ignorehitpause=1

[State -2, Hurt]
type=lifeadd
trigger1=var(1)
value=var(1)
ignorehitpause=1
[State -2, Hurt]
type=palfx
trigger1=var(1)
time=8
add=255,255,255
sinadd=-255,-255,-255,32
ignorehitpause=1
[State -2, Hurt]
type=varset
trigger1=var(1)
var(1)=0
ignorehitpause=1

[State -2, Hit/Push Controller]
type=helper
trigger1=!numhelper(1)
helpertype=normal
stateno=1
ID=1
name="Hit/Push Controller"
postype=p1
pausemovetime=2147483647
supermovetime=2147483647

[State -2, Spawn Arm]
type=helper
triggerall=roundstate=2&&alive
triggerall=var(11)<2&&(numhelper(300)+numhelper(400))<4
trigger1=stateno!=211&&(command="z"||command="c")
trigger2=stateno=211&&random<25
helpertype=normal
stateno=400
ID=400
name="Arm"
postype=left
pos=20+(random%280),0
ownpal=1

[State -2, Spawn Leg]
type=helper
triggerall=roundstate=2&&alive
triggerall=var(10)<8&&(numhelper(300)+numhelper(400))<4
trigger1=stateno!=211&&(command="y"||command="b")
trigger2=stateno=211&&random<50
helpertype=normal
stateno=300
ID=300
name="Leg"
postype=left
pos=20+(random%280),0
ownpal=1

[State -2, NoPush]
type=playerpush
trigger1=1
value=0
ignorehitpause=1
[State -2, Push Flag]
type=varset
trigger1=1
var(2)=1
[State -2, Push Flag]
type=varset
trigger1=stateno=5150
trigger2=stateno=100
trigger3=stateno=[210,212]
var(2)=0

[State -2, Ctrl]
type=ctrlset
trigger1=1
value=0
ignorehitpause=1
[State -2, Ctrl]
type=ctrlset
trigger1=roundstate=3
trigger1=stateno=0||stateno=25
value=1
ignorehitpause=1

[State -2, Turn]
type=turn
trigger1=p2dist x<0
trigger1=stateno=0||stateno=25||stateno=100

[State -2, Offset]
type=offset
trigger1=1
y=-16
ignorehitpause=1
[State -2, Spr]
type=sprpriority
trigger1=1
value=-6
ignorehitpause=1

[State -2, Assert]
type=assertspecial
trigger1=1
flag=nowalk
flag2=noautoturn
[State -2, Assert]
type=assertspecial
trigger1=1
flag=nostandguard
flag2=nocrouchguard
flag3=noairguard

[State -2, Water]
type=helper
trigger1=!numhelper(500)
helpertype=normal
stateno=500
ID=500
name="Water + Wood"
postype=left
pos=160,0
pausemovetime=2147483647
supermovetime=2147483647
ownpal=1

[State -2, Debug]
type=displaytoclipboard
trigger1=1
text="Legs=%d Arms=%d"
params=var(10), var(11)
ignorehitpause=1