# -*- coding: utf-8 -*-
# @Author: 16240
# @Date:   2017-11-02 10:29:45
# @Last Modified by:   16240
# @Last Modified time: 2018-01-24 14:15:20
import pyautogui
import time
i = 0
while True:
    print(i)
    i = i + 1
    time.sleep(200)
    pyautogui.mouseDown()
    pyautogui.mouseUp()
