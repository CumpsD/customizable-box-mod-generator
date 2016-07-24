module renderFull() {
  difference() {
    enclosure(boxType, part, boxColor);

    translate(pos510)
      rotate(rot510)
        connector510(type_510_connector, boxColor, false);

    if(enableFireSwitch == "yes")
      translate(posFireSwitch)
        rotate(rotFireSwitch)
          switch(fireSwitchType, boxColor, false);

    if(enableVoltMeter == "yes")
      translate(posVoltMeter)
        rotate(rotVoltMeter)
          display(voltMeterType, boxColor, false);

    if(enableSled == "yes")
      translate(posSled)
        rotate(rotSled)
          sled(sledType, boxColor, false);

    if(enablePcb == "yes")
      translate(posPcb)
        rotate(rotPcb)
          pcb(pcbType, false);
  }
}

module visualisation() {
  translate(pos510)
    rotate(rot510)
      connector510(type_510_connector, color_510_connector);

  if(enableFireSwitch == "yes")
    translate(posFireSwitch)
      rotate(rotFireSwitch)
        switch(fireSwitchType, fireSwitchColor);

  if(enableVoltMeter == "yes")
    translate(posVoltMeter)
      rotate(rotVoltMeter)
        display(voltMeterType, voltMeterColor);

  if(enableSled == "yes")
    translate(posSled)
      rotate(rotSled)
        sled(sledType, sledColor);

  if(enablePcb == "yes")
      translate(posPcb)
        rotate(rotPcb)
          pcb(pcbType);
}