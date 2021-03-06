;-------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

;==========================================================
;Light Punch
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 200, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 20, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 1

[State 200, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = 0

[State 200, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 20
persistent = 0

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------
;Light Kick
[Statedef 201]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 201                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 201, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 25, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 201, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 2

[State 201, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 1
y = 0

[State 201, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 25
persistent = 0

[State 201,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------
;Medium Punch
[Statedef 202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 202                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 202, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 30, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 2             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 202, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 3

[State 202, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 0

[State 202, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 30
persistent = 0

[State 202,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------
;Medium Kick
[Statedef 203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 203                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 203, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 35, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 2             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 203, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 3

[State 203, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 0

[State 203, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 35
persistent = 0

[State 203,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------
;Hard Punch
[Statedef 204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 204                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 204, 1]
type = HitDef
trigger1 = animelem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 40, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = Trip               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -3,-10             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 204, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 3

[State 203, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 40
persistent = 0

[State 204, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 0

[State 204,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------------------
;Hard Kick
[Statedef 205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 205                      ;Change animation (Def: no change)
sprpriority = 2                  ;Set p1's sprite layering priority to 2 (in front)

[State 205, 1]
type = HitDef
trigger1 = animelem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 45, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = 5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = Trip               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -3,-10             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 205, 1]
type = PlaySnd
trigger1 = Time = 1
value = 50, 1

[State 205, add bar if not max]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 45
persistent = 0

[State 205, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 3
y = 0

[State 205,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Punch Combo Slam
[Statedef 206]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 206
sprpriority = 2

[State 206, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 5
y = -12

[State 206, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 57
timegap = 1
framegap = 2
length = 20
trans = add
;palcolor = 256
;palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
palpostbright = 0,0,0

[State 206, 2]
type = HitDef
trigger1 = Animelem = 3
attr = A, NA
damage = 50
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0,13
air.velocity = -3,0

[State 206, 3]
type = CtrlSet
trigger1 = Time = 57
value = 1
;---------------------------------------------------------------------------
; Kick Combo Slam
[Statedef 207]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 207
sprpriority = 2

[State 207, VelSet]
type = VelSet
trigger1 = animelem = 1
x = 6
y = -12

[State 207, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage = 55
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = 0,13
air.velocity = -3,10

[State 207, 3]
type = CtrlSet
trigger1 = Time = 50
value = 1
;---------------------------------------------------------------------------
;LaunchKiball
[Statedef 208]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -250
velset = 0,0
anim = 208
ctrl = 0
sprpriority = 2

[State 502, 3]
type = PlaySnd
trigger1 = Time = 1
value = 50, 5

[State 1000, 4]
type = projectile
trigger1 = animelem = 2
projID = 209
projanim = 209
projhitanim = 210
projremove = 1
projremovetime = 30
velocity = 15,0
attr = S, SP
damage    = 30,20
animtype  = Medium
projhits = 1
projpriority = 5
offset = 0,0
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,6
sparkxy = 40, -30
hitsound   = 10,3
guardsound = 5,2
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 208, VarSet]
type = VarSet
trigger1 = animelem = 2
v = 5
value = 1

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;LaunchKiball
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= -250
velset = 0,0
anim = 211
ctrl = 0
sprpriority = 2

[State 502, 3]
type = PlaySnd
trigger1 = Time = 1
value = 50, 5

[State 1000, 4]
type = projectile
trigger1 = animelem = 2
projID = 209
projanim = 209
projhitanim = 210
projremove = 1
projremovetime = 30
velocity = 15,0
attr = S, SP
damage    = 30,20
animtype  = Medium
projhits = 1
projpriority = 5
offset = 0,0
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,6
sparkxy = 40, -30
hitsound   = 10,3
guardsound = 5,2
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3
airguard.velocity = -3.5
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3

[State 208, VarSet]
type = VarSet
trigger1 = animelem = 2
v = 5
value = 0

[State 1000, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Final Flash
[Statedef 214]
type    = S
movetype= A
physics = S
anim = 214
velset = 0,0,0
poweradd = -1000
juggle = 4
ctrl = 0

[State 1002, Explod]
type = Explod
trigger1 = animelem = 1
anim = 215
ID = 215
bindtime = -1
scale = 0.5,0.5
removetime = 45
removeongethit = 1
sprpriority = 2
pos = -10,-30

[State 1002, Explod]
type = Explod
trigger1 = animelem = 1
anim = 216
ID = 216
bindtime = -1
scale = 0.5,0.5
removetime = 45
removeongethit = 1
sprpriority = 2
pos = 20,-30

[State 800, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
value = SCA
time = 110

[State 800, Charge]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
sound = 2, 1
movetime = 10

[State 800, Final Flash]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,7

[State 800, Final Flash]
type = PlaySnd
trigger1 = AnimElem = 6
value = 50,8

[State 800, Beam]
type = Projectile
trigger1 = AnimElem = 6
getpower  = 0
projanim = 217
projhitanim = -1
projpriority = 5
projremove = 1
projremovetime = 46
projid = 217
projhits = 30
projmisstime = 1
velocity = 0
accel = 0
offset = 5,2
attr = S, SP
damage   = 60,5
animtype = hard
guardflag = MA
hitflag = MAFP
pausetime = 0,3
hitsound   = S5,2
sparkno = -1
guard.sparkno = -1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
air.slidetime = 50
ground.velocity = -2
air.animtype = High
air.velocity = -20
air.juggle = 2
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 800, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Big Bang Attack
[Statedef 218]
type    = S
movetype= A
physics = S
anim = 218
velset = 0,0,0
poweradd = -2500
juggle = 4
ctrl = 0

[State 802, Charge]
type = SuperPause
trigger1 = AnimElem = 1
time = 110
sound = 945,253
movetime = 50

[State 1002, Explod]
type = Explod
trigger1 = animelem = 1
anim = 219
ID = 219
bindtime = -1
removetime = 60
removeongethit = 1
sprpriority = 2
pos = 0,-5

[State 802, Big Bang Attack]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,9

[State 802, Big Bang Attack]
type = PlaySnd
trigger1 = AnimElem = 6
value = 50,10

[State 503, Ball]
type = projectile
trigger1 = animelem = 6
projID = 1
projanim = 220
projhitanim = 221
projremove = 1
projremovetime = 30
velocity = 9,0
attr = S, SP
damage    = 200,180
animtype  = Medium
projhits = 1
projpriority = 5
offset = 1,-5
getpower  = 0
givepower = 30
guardflag = MA
pausetime = 0,6
sparkxy = 40, -30
hitsound   = S50,4
guardsound = S50,4
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
air.slidetime = 50
ground.velocity = -2
air.animtype = High
air.velocity = -60
air.juggle = 2
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0


[State 802, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Final Shine
[Statedef 225]
type    = S
movetype= A
physics = S
anim = 228
velset = 0,0,0
poweradd = -2000
juggle = 4
ctrl = 0

[State 1002, Explod]
type = Explod
trigger1 = animelem = 1
anim = 225
ID = 225
bindtime = -1
scale = 0.5,0.5
removetime = 30
removeongethit = 1
sprpriority = 2
pos = 20,-33

[State 800, NotHitBy]
type = NotHitBy
trigger1 = animelem = 1
value = SCA
time = 95

[State 800, Charge]
type = SuperPause
trigger1 = AnimElem = 1
time = 60
sound = 2, 1
movetime = 30

[State 800, Final Shine]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50,11

[State 800, Final Shine]
type = PlaySnd
trigger1 = AnimElem = 4
value = 50,8

[State 800, Beam]
type = Projectile
trigger1 = AnimElem = 4
getpower  = 0
projanim = 227
projhitanim = -1
projpriority = 5
projremove = 1
projremovetime = 46
projid = 227
projhits = 30
projmisstime = 1
velocity = 0
accel = 0
offset = 5,2
attr = S, SP
damage   = 80,10
animtype = hard
guardflag = MA
hitflag = MAFP
pausetime = 0,3
hitsound   = S5,2
sparkno = -1
guard.sparkno = -1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 15
air.slidetime = 50
ground.velocity = -2
air.animtype = High
air.velocity = -20
air.juggle = 2
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0

[State 800, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Kick Upper Launcher
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 230
sprpriority = 2

[State 100,Afterimage]
type = AfterImage
trigger1 = AnimElem = 1
time = 50
trans = add
timegap = 1
framegap = 1
length = 10
palfx = 248,216,48

[State 207, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 2
y = -5

[State 207, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 2
y = -5

[State 207, VelSet]
type = VelSet
trigger1 = animelem = 5
x = 2
y = -5

[State 207, 2]
type = HitDef
trigger1 = Animelem = 2
attr = A, NA
damage = 55
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-5
air.velocity = -2,-5

[State 207, 2]
type = HitDef
trigger1 = Animelem = 3
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-30
air.velocity = -2,-5

[State 207, 2]
type = HitDef
trigger1 = Animelem = 4
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-30
air.velocity = -2,-5

[State 207, 2]
type = HitDef
trigger1 = Animelem = 5
attr = A, NA
damage = 30
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = 0
sparkxy = -10,-58
hitsound   = 5,0
guardsound = 6,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -2,-5
air.velocity = -2,-5

[State 800, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 40
ctrl = 1
;-------------------------------------------------------------------------
;Parry
[Statedef 1010]
type = S
movetype = I
physics = S
anim = 1010
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 1010: AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1010: CtrlSet]
type = CtrlSet
trigger1 = (Time > 4) && (StateType = S)
value = 1

[State 1010: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1010: Pause]
type = Pause
trigger1 = (!Time)
time = 14
movetime = 14

[State 1010: VarSet]
type = VarSet
trigger1 = (!Time)
var(1) = 1

[State 1010: EnvColor]
type = EnvColor
trigger1 = (!Time)
value = 255,255,255
time = 2

[State 1010: ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = 0
;---------------------------------------------------------------------------
;Cancel
[Statedef 9000]
type = S
movetype = I
physics = S
anim = 195
ctrl = 0
velset = 0,0
sprpriority = 2

[State 9000: VarSet]
type = VarSet
trigger1 = (!Time)
v = 0
value = 300

[State 9000: ChangeState]
type = ChangeState
trigger1 = (AnimTime = 0)
value = 0
ctrl = 1

[Statedef 9001]
type = S
physics = S
anim = 20
sprpriority = 1

[State 9001: VelSet]
type = VelSet
trigger1 = 1
x = 6

[State 9001: AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2 = NoAutoTurn

[State 9001: ChangeState]
type = ChangeState
trigger1 = Var(0) = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Intro
[Statedef 190]
type = S
movetype = I
physics = S
anim = 190

[State 190,0]
type = AssertSpecial
trigger1 = RoundState = 0
trigger2 = RoundState = 1
flag = nobardisplay
flag2 = intro

[State 190,3]
type = PlaySnd
trigger1 = time = 10
value = 0,2
volume = 255

[State 190,4]
type = ChangeState
trigger1 = Animtime = 0;RoundState = 2
value = 0
ctrl = 1
;--------------------------
;Exceed - use any state number you want
[Statedef 1000]
type = S
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 0,0

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 4
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 32
v = 4
value = 0

[State 1000,ChangeAnim]
type = ChangeAnim
triggerall = animelem = 2
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) > floor ((AnimElemTime(AnimElemNo(0)) - AnimElemTime(AnimElemNo(0) + 1))/3)
ignorehitpause = 1
value = Anim
elem = AnimElemNo(0) + 3

[State 1003, AttackMulSet]
type = AttackMulSet
trigger1 = time = 0
time = 50
value = 2

[State 1000, PalFXWiz]
type = PalFX
trigger1 = animelem = 2
time = 100
add = 130,70,-100
mul = 300,300,100
sinadd = -50,-50,-50,8
invertall = 0
color = 0

[State 1003, DefenceMulSet]
type = DefenceMulSet
trigger1 = time = 0
value = 2
time = 50

[State 6001, pause]
type = SuperPause
trigger1 = time = 2
time = 30
anim = -1
sprpriority = 0
sound = s3,7
persistent = 1
darken = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 100
timegap = 1
framegap = 2
length = 20
trans = add
;palcolor = 256
;palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
palpostbright = 0,0,0

[State 190,3]
type = PlaySnd
trigger1 = time = 1
value = 4,1
volume = 255

[State 6001, pause]
type = Explod
trigger1 = time = 2
anim = 16000
pos = 10,-45
postype = p1
supermovetime = 23
removetime = 23
sprpriority = 2

[State 6001, pause]
type = Explod
trigger1 = time = 2
anim = 17000
pos = 0,0 ;pos = 8,8 for original size
scale = 1.1,1.1 ;delete line if wish to use original size
postype = left
supermovetime = 22
removetime = 22
sprpriority = -2

[State 6001, pause]
type = EnvColor
trigger1 = time = 2
value = 0,0,0
time = 22
under = 1

[State 1000, pow]
type = PowerAdd
trigger1 = Movehit
value = 100
persistent = 1

[State 1000,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;DM: Use any value you want
[Statedef 6000]
type = S
movetype = A
physics = S
anim = 0
ctrl = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 5
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 32
v = 5
value = 0

[State 6001, pause]
type = SuperPause
trigger1 = time = 1
time = 10
anim = -1
sprpriority = 0
sound = s3,7
persistent = 1

[State 1000,ChangeAnim]
type = ChangeAnim
triggerall = animelem = 2
trigger1 = AnimElemTime(AnimElemNo(0) + 1) < 0
trigger1 = AnimElemTime(AnimElemNo(0)) > floor ((AnimElemTime(AnimElemNo(0)) - AnimElemTime(AnimElemNo(0) + 1))/3)
ignorehitpause = 1
value = Anim
elem = AnimElemNo(0) + 3

[State 1000, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 100
timegap = 1
framegap = 2
length = 20
trans = add
;palcolor = 256
;palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
palpostbright = 0,0,0

[State 190,3]
type = PlaySnd
trigger1 = time = 2
value = 4,0
volume = 255

[State 6001, pause]
type = Explod
trigger1 = time = 2
anim = 15000
pos = 0,-40
postype = p1
supermovetime = 32
removetime = 32
sprpriority = 2

[State 6001, pause]
type = EnvColor
trigger1 = time = 2
value = 0,0,0
time = 32
under = 1

[State 6000, pow use if max]
type = PowerAdd
trigger1 = AnimElem = 1
trigger1 = var(1) = 1
value = -400
persistent = 1

[State 6000, pow use if normal]
type = PowerAdd
trigger1 = AnimElem = 1
trigger1 = var(1) != 1
value = -1000
persistent = 1

[State 6000, pow]
type = PowerAdd
trigger1 = Movehit
value = 0
persistent = 1

[State 1003, AttackMulSet]
type = AttackMulSet
trigger1 = time = 0
time = 32
value = 2

[State 1003, DefenceMulSet]
type = DefenceMulSet
trigger1 = time = 0
value = 2
time = 32

[State 6000,end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------
; Jump Start
[Statedef 40]
type = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 1]
type = VarSet
trigger1 = command = "hijump"
trigger2 = prevstateno=100 && command = "holdup"
var(2) = 1

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, jump]
type = VelSet
trigger1 = AnimTime = 0 && !var(2)
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, hijump]
type = VelSet
trigger1 = AnimTime = 0 && var(2)
x = IfElse(sysvar(1)=0,0,IfElse(sysvar(1)=1,4,-4))
y = const(velocity.jump.y)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


; Jump Up
[Statedef 50]
type = A
physics = A

[State 50, AfterImage]
type = AfterImage
trigger1 = Time = 0 && var(2)
time = 12
timegap = 1
framegap = 2
length = 10
trans = none
;palcolor = 256
;palinvertall = 0
palbright = 0,0,0
palcontrast = 256,256,256
palpostbright = 0,0,0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, reset]
type = VarSet
trigger1 = Time = 0
var(2) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

;---------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------

[Statedef -2]

;Parry

[State -2: Null]
type = Null
trigger1 = (!Time) && (Var(0) = 0)
trigger1 = ((Command = "holdfwd") && (StateNo = 20)) ^^ ((Command = "holddown") && (StateNo = [10,11]))
trigger1 = (Var(0) := 8)
trigger2 = (Command != "holdfwd") && (Command != "holddown") && (Var(1) = 1)
trigger2 = (Var(1) := 0)
ignorehitpause = 1

[State -2: VarAdd]
type = VarAdd
trigger1 = (Var(0) > 0)
var(0) = -1
ignorehitpause = 1

[State -2: HitOverride]
type = HitOverride
triggerall = (StateType != A) && (Ctrl) && (Var(0) > 0)
trigger1 = (Command != "holddown") && (Command != "holdback")
attr = SA, AA, AP
slot = 0
stateno = 1010
ignorehitpause = 1

;Enemy Taunts
[State -2, Taunt]
type = PowerAdd
trigger1 = (p2stateno = 195) && (enemy, statetime < 20)
trigger1 = var(1) != 1
value = 11

;Maximum Bar Code
[State -2, var]
type = VarSet
trigger1 = Power = 0
v = 1
value = 0
ignorehitpause = 1

[State -2, var]
type = VarSet
trigger1 = Power >= 3000
v = 1
value = 1
ignorehitpause = 1

[State -2, 2]
type = PowerAdd
trigger1 = var(1) = 1
trigger1 = stateno != [5000, 5101]
value = -1

[State -2, 2]
type = PowerAdd
trigger1 = var(1) = 1
trigger1 = stateno = [5000, 5101]
value = -2

[State -2, var]
type = VarSet
trigger1 = Power <= 2000
v = 1
value = 0
ignorehitpause = 1

;Exceed Use Code
[State -2, ex]
type = VarSet
trigger1 = Stateno = 1000
v = 51
value = 0
ignorehitpause = 1
persistent = 1

[State -2, ex]
type = VarSet
trigger1 = RoundNo = 1
trigger1 = RoundState = 0
v = 51
value = 1
ignorehitpause = 1

[State -2, Debug display]
trigger1 = 1
type = DisplayToClipboard
ignorehitpause = 1
text = "DIZZY VAR = %d GUARD CRUSH = %d"
params = var(13) , var(11)

;==================================================================================
; ------- DIZZY CODE --------
;===============================================
[State -2, reset Dizzy]
type = VarSet
trigger1 = RoundState = 0 || RoundState = 3 || (movetype = H &&  var(14) = 1 && stateno != 5250)
ignorehitpause = 1
var(13) = 0

[State -2, reset Dizzy]
type = VarSet
trigger1 = var(13) <= 0 && var(14) = 1
ignorehitpause = 1
var(14) = 0

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = (var(13) = [1,999]) && movetype = H && enemy, hitdefattr = SCA, HA, HP
var(13) = -50
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = (var(13) = [1,999]) && movetype = H && gethitvar(hitcount) >= 5 
var(13) = -20
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = VarAdd
trigger1 = var(13) = [1,999]
var(13) = -1
ignorehitpause = 1 

[State -2, DIZZY CODE]
type = Varset
trigger1 = var(13) > 1000
var(13) = 1000
ignorehitpause = 1 
;----------------


;----------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;----------------------------------------------------------------------

[Statedef -3]

[State -3, jump]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 50
value = 3,2
volume = 200

[State -3, dash]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 100
value = 3,4
volume = 200

[State -3, hop]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 105
value = 3,5
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 106
value = 3,3
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
value = 3,1
volume = 200

;----------------------------------------------------------------------------------------------
; State -3 / Guard Crush System / var(11) : Guard Crush Variable
;----------------------------------------------------------------------------------------------

[State -3, Light Hit Guard]
type = VarAdd
triggerall = var(11) > 0
trigger1 = stateno = 5001
trigger1 = anim = 5000
trigger2 = stateno = 5001
trigger2 = anim = 5010
trigger3 = stateno = 5011
trigger3 = anim = 5020 
persistent = 0
var(11) = -1
ignorehitpause = 1

[State -3, Medium Hit Guard]
type = VarAdd
triggerall = var(11) > 0
trigger1 = stateno = 5001
trigger1 = anim = 5001
trigger2 = stateno = 5001
trigger2 = anim = 5011
trigger3 = stateno = 5011
trigger3 = anim = 5021 
persistent = 0
var(11) = -3
ignorehitpause = 1

[State -3, Strong Hit Guard]
type = VarAdd
triggerall = var(11) > 0
trigger1 = stateno = 5001
trigger1 = anim = 5002
trigger2 = stateno = 5001
trigger2 = anim = 5012
trigger3 = stateno = 5011
trigger3 = anim = 5022 
persistent = 0
var(11) = -6
ignorehitpause = 1

[State -3, Fall Hit Guard]
type = VarAdd
trigger1 = var(11) > 0
trigger1 = PrevStateNo = 5050
persistent = 0
var(11) = -10
ignorehitpause = 1

[State -3, Special Add]
type = VarAdd ; Add when hitshaketime had at lease 15 ticks - Heavy Guard
triggerall = GetHitVar(hitshaketime) = 15
trigger1 = stateno = 150
trigger2 = stateno = 152
var(11) = 6
ignorehitpause = 1

[State -3, Special Add 2]
type = Varadd ; Add when hitshaketime had at lease 12 ticks - Medium Guard
triggerall = GetHitVar(hitshaketime) = 12
trigger1 = stateno = 150
trigger2 = stateno = 152
var(11) = 4
ignorehitpause = 1

[State -3, Special Add 3]
type = Varadd ; Add when hitshaketime had at lease 8 ticks - Light Guard
triggerall = GetHitVar(hitshaketime) = 8
trigger1 = stateno = 150
trigger2 = stateno = 152
var(11) = 2
ignorehitpause = 1

[State -3, Guard Crush]
type = ChangeState ; Change To Guard Crush When Var(11) Limits Are Reached.
trigger1 = var(11) >= 55
value = 19000
ctrl = 0
ignorehitpause = 1

[State -3, Cancel]
type = VarAdd
trigger1 = (Var(0) > 0)
v = 0
value = -1
ignorehitpause = 1

[State -3, Cancel]
type = VarSet
trigger1 = (MoveType = H) || (Roundstate = 3)
v = 0
value = 0

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
