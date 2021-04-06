# ISR Dataset C-VEP EEG

C-VEP EEG Dataset created for the paper: [A User-Identification system based on Code-modulated Visual Evoked Potentials with LED stimulation](xxx).

## Source code

Functions necessary to load .mat files and to segment session data in C-VEP time segments are **.m** files in folder [**scripts**](scripts).
Data from the ISR Dataset C-VEP EEG is stored in **.mat** files containing pre-processed C-VEP EEG data arrays. It can be found in folder [**ISR-Sequence**](ISR-Sequence).
Data for the Benchmark C-VEP Dataset, adapted from paper reference [**\[20\]**](https://doi.org/10.1038/s41598-017-15373-x), is stored in folder [**Aminaka_sequence**](Aminaka_sequence).

## Requirements

For the scripts we recommend
- Matlab r2020.a

## Data structure

In each dataset folder there are several .mat files named Tx.mat. Each file contains a 4-D array in the format (channels, time samples, user ID, block). Data was recorded at a sampling rate of 512Hz, and is time-segmented according to the paradigm used in the paper above.
