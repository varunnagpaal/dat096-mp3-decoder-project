
The design files are located at
C:/cygwin/home/Gokhan/newgrlib-gpl-1.1.0-b4108/designs/leon3-xilinx-sp601/mig37:

   - mig_37.vho:
        vho template file containing code that can be used as a model
        for instantiating a CORE Generator module in a HDL design.

   - mig_37.xco:
       CORE Generator input file containing the parameters used to
       regenerate a core.

   - mig_37_flist.txt:
        Text file listing all of the output files produced when a customized
        core was generated in the CORE Generator.

   - mig_37_readme.txt:
        Text file indicating the files generated and how they are used.

   - mig_37_xmdf.tcl:
        ISE Project Navigator interface file. ISE uses this file to determine
        how the files output by CORE Generator for the core can be integrated
        into your ISE project.

   - mig_37 directory.

In the mig_37 directory, three folders are created:
   - docs:
        This folder contains user guide.

   - example_design:
        This folder includes the design with synthesizable test bench.

   - user_design:
        This folder includes the design without test bench modules.

The example_design and user_design folders contain several other folders
and files. All these output folders are discussed in more detail in
Spartan-6 FPGA Memory Controller user guide (ug388.pdf) located in docs folder.
    