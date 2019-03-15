#!/bin/sh

# from that thing on GitHub:
#   So after the cmake ../repo/src i edited the following files :
#     Vsp_build/vsp/CMakeFiles/apitest_g.dir/link.txt
#     Vsp_build/vsp/CMakeFiles/vsp.dir/link.txt
#     Vsp_build/vsp_aero/viewer/CMakeFiles/vspviewer.dir/link.txt
#     And added the followinf link flags after libfltk.a : -ldl -lXinerama -lXft -lXi -lXfixes -lXcursor -lz -lutil -lrt

# run this from build/
# there's probably a better way to do this.

sed s/libfltk.a/libfltk.a\ -ldl\ -lXinerama\ -lXft\ -lXi\ -lXfixes\ -lXcursor\ -lz\ -lutil\ -lrt/   vsp/CMakeFiles/apitest_g.dir/link.txt > tmp
mv -v tmp vsp/CMakeFiles/apitest_g.dir/link.txt
sed s/libfltk.a/libfltk.a\ -ldl\ -lXinerama\ -lXft\ -lXi\ -lXfixes\ -lXcursor\ -lz\ -lutil\ -lrt/ vsp/CMakeFiles/vsp.dir/link.txt > tmp
mv -v tmp vsp/CMakeFiles/vsp.dir/link.txt
sed s/libfltk.a/libfltk.a\ -ldl\ -lXinerama\ -lXft\ -lXi\ -lXfixes\ -lXcursor\ -lz\ -lutil\ -lrt/ vsp_aero/viewer/CMakeFiles/vspviewer.dir/link.txt > tmp
mv -v tmp vsp_aero/viewer/CMakeFiles/vspviewer.dir/link.txt

