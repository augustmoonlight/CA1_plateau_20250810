NEURON {
    SUFFIX vmax
    RANGE vm
    RANGE vdiff
    RANGE v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11
}

ASSIGNED {
       v (millivolt)
       vm (millivolt)
       vdiff (millivolt)
       v0 (millivolt)
       v1 (millivolt)
       v2 (millivolt)
       v3 (millivolt)
       v4 (millivolt)
       v5 (millivolt)
       v6 (millivolt)
       v7 (millivolt)
       v8 (millivolt)
       v9 (millivolt)
       v10 (millivolt)
       v11 (millivolt)
}

INITIAL {
    vm = v
    vdiff = 0
    v0 = 0
    v1 = 0
    v2 = 0
    v3 = 0
    v4 = 0
    v5 = 0
    v6 = 0
    v7 = 0
    v8 = 0
    v9 = 0
    v10 = 0
    v11 = 0
}

BREAKPOINT { 
   if (v>vm) { vm=v }
}
