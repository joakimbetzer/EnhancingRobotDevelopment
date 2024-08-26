import math
import time

wheelbase = 0.16
wheelRadius = 0.033
prevTime = 0
prevAngularPosition = 0
firstRun = True
start_time = time.time()

def makeModel(rWheelPos, lWheelPos, rWheelVel, lWheelVel):
    global prevTime, prevAngularPosition, dt, firstRun, startLpos, startRpos, positionX, positionY

    if firstRun:
        print("starting model")
        start_time
        dt = 0
        positionX = 0
        positionY = 0
        firstRun = False
        startLpos = rWheelPos
        startRpos = lWheelPos

        return None, None

    currentTime = time.time()
    dt = currentTime - start_time

    rPos = startLpos - rWheelPos
    lPos = startRpos - lWheelPos

    angularPosition = (rPos - lPos)*(wheelRadius/wheelbase)
    
    rLinSpeed = rWheelVel * wheelRadius
    lLinSpeed = lWheelVel * wheelRadius

    if dt == 0:
        angularSpeed = 0
        return None
    else:
        angularSpeed = (angularPosition-prevAngularPosition)/dt

    speedX = (lLinSpeed+angularSpeed*(wheelbase/2))*math.cos(angularPosition)
    speedY = (lLinSpeed+angularSpeed*(wheelbase/2))*math.sin(angularPosition)

    positionX += speedX * dt
    positionY += speedY * dt

    prevAngularPosition = angularPosition
    prevTime = currentTime