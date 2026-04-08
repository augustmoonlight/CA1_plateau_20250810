# CA1_plateau_20250810

--- Descriptions ---

This is the multicompartmental model of hippocampal CA1 pyramidal cell aiming to recapture the generation of Ca/NMDA plateau upon convergance of different pathway inputs with detailed Ca-related physiologies.  
The associated preprint of this model is on https://www.biorxiv.org/content/10.1101/2025.10.01.676159v1.  
The given parameters of this model simulate the emergence of Ca/NMDA plateau at distal apical dendrites under the following input conditions:
45 synapses receiving theta burst stimulation (TBS) from CA3, 45 synapses receiving ramp frequency input from CA3, 27 synapses receiving TBS from EC
All synapses are chosen in a pseudo-random manner.

One can change the number of activated synapses, the way of choosing synapses, or the input protocols to test for different conditions.
(The protocols mentioned in the preprint, including theta, no theta, ramp, no ramp, upward ramp, downward ramp, can all be found in the code.
Substitute the default theta and ramp with different protocols produced the corresponding results in the preprint.)

First uploaded onto Github on 2026/03/30.
Package versions used: Python 3.11, NEURON 8.2.3, numpy 1.26.3, matplotlib 3.8.0, plotly 5.9.0

--- Instructions ---

1. Install required Python packages
```
pip install neuron matplotlib plotly numpy random pickle
```

2. Open and execute the file **3pathway_minimal_20250810.ipynb** 

3. For a success simulation:

   The 20th block should generate this figure:  
   ![Figure of neuron's morphology and distribution of stimulated synapses in the simulation](examplefig_morph_syn)
   (The figure can be rotated by dragging the mouse inside Jupyter notebook interface.)  
   The black segment with the largest diameter represents the soma. The blue dot represents the location of SR-SLM border where dendritic recordings are made.  
   The dark green dots, orange dots, and purple dots represent the locations of synapses receiving TBS from CA3, ramp frequency input from CA3, and TBS from EC, respectively.  
   The setting is a recreation of the experimental setting in Figure 3 of the preprint.  

   The 25th block should generate these 2 figures:  
   ![Voltage trace of somatic voltage recording demonstrating Ca/NMDA plateau](examplefig_soma_vtrace) 
   ![Voltage trace of dendritic voltage recording demonstrating Ca/NMDA plateau](examplefig_dend_vtrace)  
   which is the voltage trace of the soma recording and dendrite recording, respectively. They demonstrate Ca/NMDA plateau with elevated membrane potential at a 10-100 ms timescale, which emerged in the latter cycle of theta burst stimulation. The simulation result is in accordance with the experimental findings.




Questions can be directed to Ying-Chieh Hsu (namonaki1122@gmail.com).
