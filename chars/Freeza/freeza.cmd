;-| Super Motions |--------------------------------------------------------

[Command]
name = "kenzien"
command = ~D, DB, B, b

[Command]            
name = "bigbang"
command= ~D, DF, F, a

[Command]            
name = "hellball"
command= ~D, DB, B, a

;-| Special Motions |------------------------------------------------------

[Command]
name = "combo1"
command = ~D, B, x

[Command]
name = "pod_soc"
command = ~D, F, b

[Command]
name= "special kick"
command= ~D, F, y

[Command]
name= "soco_forte"
command= ~D, F, x

[Command]
name = "heel shoot"
command = F, b

[Command]
name = "elbow dash"
command = ~F, F, a

[Command]
name = "Dancing kick"
command = ~B, F, b

[Command]      
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "fireball"
command = c

[Command]             ;�G�l���M�[�a
name = "pod_chao"
command = ~D, DB, B, x

; QCF
;[Command]
;name = "QCF_a"
;command = ~D, DF, F, a

;[Command]
;name = "QCF_b"
;command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z



;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "kick"
command = y
time = 1

[Command]
name = "soc"
command = x
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command] 
name = "charge 1"
command = /b
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------

[Statedef -1]

[State -1]
type = ChangeState
value = 1030
triggerall = command = "special kick"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = command = "special kick"
trigger2 = stateno = 610        
trigger3 = command = "special kick"
trigger3 = stateno = 610        
trigger3 = statetime <= 2
trigger4 = command = "special kick"
trigger4 = stateno = 210         
trigger4 = movecontact = 1
trigger5 = command = "special kick"
trigger5 = stateno = 610          
trigger6 = command = "special kick"
trigger6 = stateno = 610          
trigger6 = movecontact = 1

;Kienzam Animation
[State -1]
type = null;ChangeState
value = 1905
triggerall = power >= 1250
trigger1 = power >= 1250
trigger1 = command = "kenzien";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "kenzien";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "kenzien";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "kenzien";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1900
triggerall = power >= 1250
triggerall = command = "kenzien";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1

[State -1]
type = ChangeState
value = 3610
triggerall = command = "hellball"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "hellball"
trigger2 = statetype != S
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1
;trigger3 = stateno = 5120   

[State -1]
type = ChangeState
value = 206
triggerall = command = "soco_forte"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger3 = movecontact = 1
trigger3 = stateno = 201
trigger4 = movecontact = 1
trigger4 = stateno = 204
trigger5 = movecontact = 1
trigger5 = stateno = 205
trigger6 = movecontact = 1
trigger6 = stateno = 400
trigger7 = MoveContact = 1
trigger7 = stateno = 401
trigger8 = MoveContact = 1
trigger8 = stateno = 404
trigger9 = MoveContact = 1
trigger9 = stateno = 405

[State -1]
type = ChangeState
value = 1070
triggerall = power >= 270
triggerall = command = "pod_chao"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 1030
trigger2 = Time  > 10
trigger2 = Power > 0

[State -1]
type = ChangeState
value = 220
triggerall = command = "soc"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;KICK
[State -1]
type = ChangeState
value = 230
triggerall = command = "kick"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = MoveContact = 1
trigger3 = stateno = 200
trigger3 = MoveContact = 1
trigger4 = stateno = 300
trigger4 = MoveContact = 1

;POD SOC
[State -1]
type = ChangeState
value = 950
triggerall = command = "pod_soc"
triggerall = command != "holddown"
triggerall = power >= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = MoveContact = 1
trigger3 = stateno = 200
trigger3 = MoveContact = 1
trigger4 = stateno = 300
trigger4 = MoveContact = 1

;===========================================================================

[State -1]
type = ChangeState
value = 2300
triggerall = command = "combo1"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3010
triggerall = command = "bigbang"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = command = "bigbang"
trigger2 = statetype != S
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1
;trigger3 = stateno = 5120   

;AirFireball_A
[State -1]
type = null;ChangeState
value = 1005
trigger1 = command = "fireball";-------
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "fireball";-------
trigger2 = stateno = 600        ;jump_a
trigger3 = command = "fireball";-------
trigger3 = stateno = 610        ;jump_b
trigger3 = movecontact = 1
trigger4 = command = "fireball";-------
trigger4 = stateno = 800        ;jump_fwd_a
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
;Dancing kick
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Dancing kick"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 9100
trigger2 = movecontact = 1
trigger3 = stateno = 9400
trigger3 = movecontact = 1
trigger4 = stateno = 8700
trigger4 = movecontact = 1
trigger5 = stateno = 800
trigger5 = movecontact = 1
trigger6 = stateno = 815
trigger6 = movecontact = 1
trigger7 = stateno = 805
trigger7 = movecontact = 1
trigger8 = stateno = 810
trigger8 = movecontact = 1
trigger9 = stateno = 7500
trigger9 = movecontact = 1

;----------------------------------------------------------------------------
;Elbow Dash
[State -1]
type = ChangeState
value = 1080
triggerall = command = "elbow dash"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1



;---------------------------------------------------------------------------
;Fireball_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1

;---------------------------------------------------------

;---------------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
;--------------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"


;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouch_A_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "soc"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Crouch_B_b
[State -1]
type = ChangeState
value = 410
triggerall = command = "kick"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump_A_b
[State -1]
type = ChangeState
value = 601
trigger1 = command = "soc"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Jump_B
[State -1]
type = ChangeState
value = 611
trigger1 = command = "kick"
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------------------------------------------------------------------
;Heel Shoot
[State -1]
type = ChangeState
value = 500
triggerall = command = "heel shoot"
trigger1 = statetype = S
trigger1 = ctrl = 1

;TripleTack
[State -1]
type = ChangeState
value = 1050
trigger1 = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Big Bang Attack
[Statedef 3010]
type    = S
movetype= A
physics = S
poweradd= -1000
juggle  = 4
velset = 0,0
anim = 3010
ctrl = 0

[State 3010, Super A]
type = SuperPause
trigger1 = Time = 2
pos = -27, -42
anim = 31

[State 3010, Super B]
type = PlaySnd
trigger1 = Time = 10
value = 0, 4 

[State 3010, Super C]
type = PowerAdd
trigger1 = Time = 2
value = -500

[State 3010, Super D]
type = AfterImage
trigger1 = Time = 2
time = 2

[State 3010, Super E]
type = AfterImageTime
trigger1 = Time = [2,68]
time = 2

[State 3010, Super F]
type = NotHitBy
trigger1 = Time = 2
value = , NA, SA, AT
time = 12

[State 3010, Super F]
type = NotHitBy
trigger1 = Time = [2,30]
value2 = C, NA
time = 1

[State 3010, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, 3

[State 3010, 3]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 5

[State 3010, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 6

[State 3010, 2]
type = Projectile
trigger1 = AnimElem = 2
ProjAnim = 3015        
projremovetime = 88   
offset = -29, -40       

[State 3010, 3]
type = HitDef
trigger1 = Time = 5
trigger2 = Time = 21
trigger3 = Time = 29
trigger4 = Time = 37
trigger5 = Time = 53
trigger6 = Time = 61
attr = S, HA
animtype  = Hard
damage    = 24,12
priority  = 6
guardflag = M
pausetime = 0,20
sparkxy = -29, -40  
hitsound = S20, 5
guardsound = S20, 3
getpower = 0
givepower = 10
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -1   
guard.velocity = -1   
air.velocity = -1,-2
airguard.velocity = -1   

[State 3010, 4]
type = Projectile
trigger1 = AnimElem = 8
ProjAnim = 3016        
ProjHitAnim = 3017      
ProjRemAnim = 1037     
offset = -29, -40        
velocity = 30, 0       
remvelocity = 0 , 0     
velmul = 1.005, 1       
accel = 0, 0          
attr = S, HP
damage    = 380,65
animtype  = Hard
getpower = 0
givepower = 100
guardflag = MA
pausetime = 0,12
sparkno = 1
sparkxy = 0,0
hitsound = S20, 4
guardsound = S20, 3
ground.type = Trip
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -20    
guard.velocity = -3.5
airguard.velocity = -3.5      
air.type = Low
air.velocity = -20,-8
fall = 1

[State 3010, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Big Bang Attack (Energia)
[Statedef 3015]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3015

[State 3015, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3017

;---------------------------------------------------------------------------
; Big Bang Attack Fireball
[Statedef 3016]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3016

[State 3016, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1036

;---------------------------------------------------------------------------
; Big Bang Attack Parte1
[Statedef 3017]
type    = A
movetype= I
physics = A

[State 3017, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 44