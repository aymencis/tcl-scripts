set ns [new Simulator]
 
$ns rtproto LS
 
$ns color 41 green
$ns color 42 pink
$ns color 43 black
$ns color 50 red
$ns color 46 purple
 
set nf [open layo.nam w]
$ns namtrace-all $nf
 
set tf [open layo.tr w]
$ns trace-all $tf 
 
set n0   [$ns node]
set n1   [$ns node]
set n2   [$ns node]
set n3   [$ns mpls-node]
set n4   [$ns mpls-node]
set n5   [$ns mpls-node]
set n6   [$ns mpls-node]
set n7   [$ns mpls-node]
set n8   [$ns mpls-node]
set n9   [$ns mpls-node]
set n10   [$ns mpls-node]
set n11   [$ns mpls-node]
set n12   [$ns mpls-node]
set n13   [$ns mpls-node]
set n14   [$ns mpls-node]
set n15   [$ns node]
set n16   [$ns node]
set n17   [$ns node]
 
 
$ns duplex-rsvp-link $n3 $n7  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n3 $n5  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n3 $n4  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n3 $n0  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n3 $n2  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n3 $n11  1Mb 10ms 0.99 1000 10000 Param Null
 
$ns duplex-rsvp-link $n5 $n7  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n5 $n6  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n6 $n8  1Mb 10ms 0.99 1000 10000 Param Null 
 
 
$ns duplex-rsvp-link $n4 $n8  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n4 $n6  1Mb 10ms 0.99 1000 10000 Param Null 
$ns duplex-rsvp-link $n3 $n1  1Mb 10ms 0.99 1000 10000 Param Null 
 
$ns duplex-rsvp-link $n8 $n7  1Mb 10ms 0.99 1000 10000 Param Null 
 
$ns duplex-rsvp-link $n9 $n7  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n9 $n10  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n9 $n11  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n10 $n12  1Mb 10ms 0.99 1000 10000 Param Null
 
$ns duplex-rsvp-link $n11 $n12  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n11 $n13  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n12 $n14  1Mb 10ms 0.99 1000 10000 Param Null
 
$ns duplex-rsvp-link $n13 $n14  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n14 $n15  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n14 $n16  1Mb 10ms 0.99 1000 10000 Param Null
$ns duplex-rsvp-link $n14 $n17  1Mb 10ms 0.99 1000 10000 Param Null
 
# Enable upcalls on all nodes
Agent/RSVP set noisy_ 255
 
set rsvp0 [$n0 add-rsvp-agent]
set rsvp1 [$n1 add-rsvp-agent]
set rsvp2 [$n2 add-rsvp-agent]
set rsvp3 [$n3 add-rsvp-agent]
set rsvp4 [$n4 add-rsvp-agent]
set rsvp5 [$n5 add-rsvp-agent]
set rsvp6 [$n6 add-rsvp-agent]
set rsvp7 [$n7 add-rsvp-agent]
set rsvp8 [$n8 add-rsvp-agent]
set rsvp9 [$n9 add-rsvp-agent]
set rsvp10 [$n10 add-rsvp-agent]
set rsvp11 [$n11 add-rsvp-agent]
set rsvp12 [$n12 add-rsvp-agent]
set rsvp13 [$n13 add-rsvp-agent]
set rsvp14 [$n14 add-rsvp-agent]
set rsvp15 [$n15 add-rsvp-agent]
set rsvp16 [$n16 add-rsvp-agent]
set rsvp17 [$n17 add-rsvp-agent]
 
	set tcp [new Agent/TCP]
	$ns attach-agent $n0 $tcp
	$tcp set fid_ 41;
	$tcp set packetSize_ 1024
	set Src0 [new Application/FTP]
	$Src0 set rate_ 256Kb
	$Src0 attach-agent $tcp
 
 
	set udp1 [new Agent/UDP]
	$ns attach-agent $n1 $udp1
	$udp1 set fid_ 42;
	$udp1 set packetSize_ 500
	set Src1 [new Application/Traffic/CBR]
	$Src1 set packetSize_ 500
	$Src1 set rate_ 64Kb
	$Src1 attach-agent $udp1
 
	set udp2 [new Agent/UDP]
	$ns attach-agent $n2 $udp2
	$udp2 set fid_ 43;
	$udp2 set packetSize_ 500
	set Src2 [new Application/Traffic/CBR]
	$Src2 set packetSize_ 500
	$Src2 set rate_ 800Kb
	$Src2 attach-agent $udp2
 
	set Dst0_ [new Agent/TCPSink]
	$ns attach-agent $n15 $Dst0_
	set Dst1_ [new Agent/LossMonitor]
	$ns attach-agent $n16 $Dst1_
	set Dst2_ [new Agent/LossMonitor]
	$ns attach-agent $n17 $Dst2_
 
	$ns connect $tcp $Dst0_
	$ns connect $udp1 $Dst1_
	$ns connect $udp2 $Dst2_
 
 
proc finish {} {
        global ns nf tf
	close $nf
	close $tf
	puts "END"
        exit 0
}
 
for {set i 3} {$i < 15} {incr i} {
	set a n$i
	set m [eval $$a get-module "MPLS"]
	eval set LSRmpls$i $m
}
 
$ns at 1.3  "$Src0 start"
$ns at 1.3  "$Src1 start"
$ns at 1.3  "$Src2 start"
$ns at 9.7 "$Src0 stop"
$ns at 9.7 "$Src1 stop"
$ns at 9.7 "$Src2 stop"
 
$ns at 1.0  "$LSRmpls3 create-crlsp-ospfte $n0 $n14 0 41 0 +256000 5000 32 "
$ns at 2.0  "$LSRmpls3 create-crlsp-ospfte $n1 $n14 1 42 1 +64000 5000 32 "
$ns at 3.0  "$LSRmpls3 create-crlsp-ospfte $n2 $n14 2 43 2 +800000 5000 32 "
 
$ns at 4.0  "$LSRmpls3 bind-flow-erlsp 15 41 0"
$ns at 5.0  "$LSRmpls3 bind-flow-erlsp 16 42 1"
$ns at 6.0  "$LSRmpls3 bind-flow-erlsp 17 43 2"
 
#$ns at 5.0 "$LSRmpls4 create-crlsp-ospfte $n0 $n16 0 1 0 +700000 5000 32 "
#$ns at 7.0 "$LSRmpls4 create-crlsp-ospfte $n1 $n16 1 2 1 +700000 5000 32 "
 
#$ns at 6.0 "$LSRmpls4 bind-flow-erlsp 17 1 0"
#$ns at 8.0 "$LSRmpls4 bind-flow-erlsp 18 2 1"
 
$ns rtmodel-at 8.0 down $n11 $n12 
$ns at 8.0 "$rsvp11 break-link $n12"  
 
#$ns at 13.0 "$LSRmpls4 reroute-ospfte $n1 $n16 $n18 1 2 2 +700000 5000 32"
 
$ns at 10.0 "finish"
 
$ns run
 
