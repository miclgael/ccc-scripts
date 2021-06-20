# Carbon Copy Cloner Scripts

I bought a NAS and then discovered that backing up an entire macOS install sucks.

> 💡 After a lot of testing multiple points of failure, I advise don't use this strategy. Archiving!

## Problem

CCC recommend backing up files over the wire into a new Disk Image, i.e. `Macintosh HD.sparsebundle`

Sparse bundles are unreliable, and break all the time. and they're also really slow to populate over the network.

## Solution

Create _two_ CCC tasks

1. backs up to a Disk Image on an external HDD connected to the local machine. Executes a script upon completion. Then starts task #2.
2. Copy a zipped up sparsebundle across the network. Much more reliable (test is in progress)
