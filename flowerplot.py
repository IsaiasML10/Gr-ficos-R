# some data:colors#c51b7d (2),#e9a3c9 (4), #a1d76a (15) 
library(reticulate)
use_python("/home/isaias/anaconda3/bin/python3.10") #con una version de python por abajo de 9 no funciona el flower_plot
#el comando sirve para cambiar de versión, se lo usa colocando esto en un script aparte de R
genome_to_data = {
    'KPEC10K': {'color': ('#c51b7d'), 'shell': 1, 'unique': 50},
    'KPEC11K': {'color': ('#c51b7d'), 'shell': 1, 'unique': 71},
    'KPEC13K': {'color': ('#e9a3c9'), 'shell': 1, 'unique': 0},
    'KPEC14K': {'color': ('#e9a3c9'), 'shell': 1, 'unique': 16},
    'KPEC15K': {'color': ('#e9a3c9'), 'shell': 1, 'unique': 57},
    'KPEC1K': {'color': ('#e9a3c9'), 'shell': 1, 'unique': 8},
    'KPEC28K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 30},
    'KPEC29K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 29},
    'KPEC2K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 3},
    'KPEC34K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 131},
    'KPEC37K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 47},
    'KPEC5K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 6},
    'KPEC6K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 3},
    'KPEC9K': {'color': ('#a1d76a'), 'shell': 1, 'unique': 72},
}

import matplotlib.pyplot as plt
from flower_plot import flower_plot

flower_plot(genome_to_data=genome_to_data, n_core=4045)
plt.tight_layout()
plt.show()

