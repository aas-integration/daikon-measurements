#!/bin/bash

echo ./runone.py boofcv
 ./runone.py boofcv
 mv dljc.log bo.log
 ./count-inv.pl bo.log
echo
echo ./runone.py catalano
 ./runone.py catalano
 mv dljc.log ca.log
 ./count-inv.pl ca.log
echo
echo ./runone.py commonsmath
 ./runone.py commonsmath
 mv dljc.log co.log
 ./count-inv.pl co.log
echo
echo ./runone.py dyn4j
 ./runone.py dyn4j
 mv dljc.log dy.log
 ./count-inv.pl dy.log
echo
echo ./runone.py ejml
 ./runone.py ejml
 mv dljc.log ej.log
 ./count-inv.pl ej.log
echo
echo ./runone.py facedetection1
 ./runone.py facedetection1
 mv dljc.log f1.log
 ./count-inv.pl f1.log
echo
echo ./runone.py facer
 ./runone.py facer
 mv dljc.log fa.log
 ./count-inv.pl fa.log
echo
echo ./runone.py imagej
 ./runone.py imagej
 mv dljc.log ij.log
 ./count-inv.pl ij.log
echo
echo ./runone.py imglib2
 ./runone.py imglib2
 mv dljc.log il.log
 ./count-inv.pl il.log
echo
echo ./runone.py imgscalr
 ./runone.py imgscalr
 mv dljc.log is.log
 ./count-inv.pl is.log
echo
echo ./runone.py jbox2d
 ./runone.py jbox2d
 mv dljc.log jb.log
 ./count-inv.pl jb.log
echo
echo ./runone.py jcodec
 ./runone.py jcodec
 mv dljc.log jc.log
 ./count-inv.pl jc.log
echo
echo ./runone.py jmonkeyengine
 ./runone.py jmonkeyengine
 mv dljc.log jm.log
 ./count-inv.pl jm.log
echo
echo ./runone.py jreactphysics3d
 ./runone.py jreactphysics3d
 mv dljc.log jr.log
 ./count-inv.pl jr.log
echo
echo ./runone.py jviolajones
 ./runone.py jviolajones
 mv dljc.log jv.log
 ./count-inv.pl jv.log
echo
echo ./runone.py ojalgo
 ./runone.py ojalgo
 mv dljc.log oj.log
 ./count-inv.pl oj.log
echo
echo ./runone.py react
 ./runone.py react
 mv dljc.log re.log
 ./count-inv.pl re.log
echo
echo ./runone.py Sort07
 ./runone.py Sort07
 mv dljc.log s7.log
 ./count-inv.pl s7.log
echo
echo ./runone.py Sort09
 ./runone.py Sort09
 mv dljc.log s9.log
 ./count-inv.pl s9.log
echo
echo ./runone.py Sort10
 ./runone.py Sort10
 mv dljc.log s1.log
 ./count-inv.pl s1.log
echo
echo ./runone.py thumbnailinator
 ./runone.py thumbnailinator
 mv dljc.log th.log
 ./count-inv.pl th.log
