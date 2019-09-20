#!/usr/bin/env python

# Sehr einfaches Python-Skript zur Ermittlung der auf
# einer Maschinen verfuegbaren Prozessierungseinheiten:
from __future__ import print_function
import multiprocessing

print(multiprocessing.cpu_count())
