from RPIO import PWM
import time

servo = PWM.Servo()

def rotate():
  servo.set_servo(17, 1000)
  time.sleep(0.7)
  servo.stop_servo(17)
  return

while True:
  i = raw_input('Press enter for food!')
  rotate()
