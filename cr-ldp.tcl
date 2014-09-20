set ns [new Simulator]
 
 
$ns color 41 green
$ns color 42 pink
$ns color 43 black
$ns color 50 red
$ns color 46 purple
 
set nf [open layo2.nam w]
$ns namtrace-all $nf
 
set tf [open layo2.tr w]
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
 
set n15   [$ns mpls-node]
set n16   [$ns mpls-node]
set n17   [$ns mpls-node]
set n18   [$ns mpls-node]
 
 
set n19   [$ns node]
set n20   [$ns node]
set n21   [$ns node]
 
#between CE-PE
$ns duplex-link $n0 $n3  1Mb 10ms DropTail
$ns duplex-link $n1 $n3  1Mb 10ms DropTail
$ns duplex-link $n2 $n3  1Mb 10ms DropTail
#between PE-PE & P-PE
$ns duplex-link $n3 $n4  1Mb 10ms CBQ
$ns duplex-link $n3 $n15  1Mb 10ms CBQ
$ns duplex-link $n4 $n16  1Mb 10ms CBQ
$ns duplex-link $n5 $n15  1Mb 10ms CBQ
$ns duplex-link $n5 $n6  1Mb 10ms CBQ
$ns duplex-link $n6 $n16  1Mb 10ms CBQ
 
$ns duplex-link $n7 $n16  1Mb 10ms CBQ
$ns duplex-link $n7 $n8  1Mb 10ms CBQ
$ns duplex-link $n8 $n15  1Mb 10ms CBQ
 
 
$ns duplex-link $n9 $n10  1Mb 10ms CBQ
$ns duplex-link $n9 $n16  1Mb 10ms CBQ
$ns duplex-link $n10 $n15  1Mb 10ms CBQ
 
$ns duplex-link $n11 $n12  1Mb 10ms CBQ
 
$ns duplex-link $n11 $n16  1Mb 10ms CBQ
$ns duplex-link $n12 $n18  1Mb 10ms CBQ
$ns duplex-link $n13 $n14  1Mb 10ms CBQ
$ns duplex-link $n13 $n18  1Mb 10ms CBQ
 
$ns duplex-link $n14 $n17  1Mb 10ms CBQ
#between P-P
$ns duplex-link $n15 $n16  1Mb 10ms CBQ
$ns duplex-link $n15 $n17  1Mb 10ms CBQ
 
$ns duplex-link $n17 $n18  1Mb 10ms CBQ
$ns duplex-link $n18 $n16  1Mb 10ms CBQ
 
$ns duplex-link $n15 $n18 1Mb 10ms CBQ
$ns duplex-link $n17 $n16 1Mb 10ms CBQ
#between CE-PE
$ns duplex-link $n19 $n12  1Mb 10ms DropTail
$ns duplex-link $n20 $n12  1Mb 10ms DropTail
$ns duplex-link $n21 $n12  1Mb 10ms DropTail
 
#layout
$ns duplex-link-op $n0 $n3 orient right-down
$ns duplex-link-op $n1 $n3 orient down
$ns duplex-link-op $n2 $n3 orient left-down
 
$ns duplex-link-op $n3 $n15 orient left-down
$ns duplex-link-op $n6 $n16 orient right-down
$ns duplex-link-op $n5 $n6 orient right
$ns duplex-link-op $n3 $n4 orient right
$ns duplex-link-op $n7 $n16 orient left
$ns duplex-link-op $n7 $n8 orient down
$ns duplex-link-op $n10 $n15 orient right-up
$ns duplex-link-op $n9 $n10 orient up
$ns duplex-link-op $n12 $n18 orient left-up
$ns duplex-link-op $n11 $n12 orient left
$ns duplex-link-op $n13 $n18 orient right-up
$ns duplex-link-op $n13 $n14 orient left
 
$ns duplex-link-op $n3 $n15 color green
$ns duplex-link-op $n6 $n16 color green
$ns duplex-link-op $n5 $n6 color green
$ns duplex-link-op $n3 $n4 color green
$ns duplex-link-op $n7 $n16 color green
$ns duplex-link-op $n7 $n8 color green
$ns duplex-link-op $n10 $n15 color green
$ns duplex-link-op $n9 $n10 color green
$ns duplex-link-op $n12 $n18 color green
$ns duplex-link-op $n11 $n12 color green
$ns duplex-link-op $n13 $n18 color green
$ns duplex-link-op $n13 $n14 color green
 
$ns duplex-link-op $n5 $n15 color green
$ns duplex-link-op $n8 $n15 color green
$ns duplex-link-op $n9 $n16 color green
$ns duplex-link-op $n4 $n16 color green
$ns duplex-link-op $n14 $n17 color green
 
$ns duplex-link-op $n15 $n16 orient right
$ns duplex-link-op $n15 $n17 orient down
$ns duplex-link-op $n17 $n18 orient right
$ns duplex-link-op $n18 $n16 orient up
$ns duplex-link-op $n15 $n18 orient right-down
$ns duplex-link-op $n17 $n16 orient right-up
 
$ns duplex-link-op $n15 $n16 color blue
$ns duplex-link-op $n15 $n17 color blue
$ns duplex-link-op $n17 $n18 color blue
$ns duplex-link-op $n18 $n16 color blue
$ns duplex-link-op $n15 $n18 color blue
$ns duplex-link-op $n17 $n16 color blue
 
$ns duplex-link-op $n19 $n12 orient right-up
$ns duplex-link-op $n20 $n12 orient up
$ns duplex-link-op $n21 $n12 orient left-up
 
$n0 label "FTP"
$n1 label "VOIX"
$n2 label "VIDEO"
 
$ns at 0.0 "$n0 color blue"
$ns at 0.0 "$n1 color yellow"
$ns at 0.0 "$n2 color orange"
 
$ns at 0.0 "$n19 color blue"
$ns at 0.0 "$n20 color yellow"
$ns at 0.0 "$n21 color orange"
 
$n15 shape "box"
$n16 shape "box"
$n17 shape "box"
$n18 shape "box"
 
$ns at 0.0 "$n15 color blue"
$ns at 0.0 "$n16 color blue"
$ns at 0.0 "$n17 color blue"
$ns at 0.0 "$n18 color blue"
 
 
$ns at 0.0 "$n3 color green"
$ns at 0.0 "$n4 color green"
$ns at 0.0 "$n5 color green"
$ns at 0.0 "$n6 color green"
$ns at 0.0 "$n7 color green"
$ns at 0.0 "$n8 color green"
$ns at 0.0 "$n9 color green"
$ns at 0.0 "$n10 color green"
$ns at 0.0 "$n11 color green"
$ns at 0.0 "$n12 color green"
$ns at 0.0 "$n13 color green"
$ns at 0.0 "$n14 color green"
 
 
$ns rtproto DV
 
# configure ldp agents on all mpls nodes
$ns configure-ldp-on-all-mpls-nodes
 
# configure-cbq-for-SBTS {qlim cbq_qtype okborrow bw maxidle extradelay}
$ns cfg-cbq-for-SBTS 10 DropTail 1 0.03 auto 0
$ns cfg-cbq-for-HBTS 10 DropTail 1 0.07 auto 0
$ns cfg-cbq-for-RTS 10 DropTail 0 0.8 auto 0
$ns cfg-cbq-for-STS 10 DropTail 1 0.1 auto 0
 
$ns bind-flowid-to-SBTS 0
$ns bind-flowid-to-SBTS 41
$ns bind-flowid-to-STS 42
$ns bind-flowid-to-HBTS 43
 
$ns bind-ldp-to-STS
 
$ns	ldp-request-color	blue
$ns	ldp-mapping-color	red
$ns	ldp-withdraw-color	magenta
$ns	ldp-release-color	orange
$ns	ldp-notification-color	green
 
$ns collect-resource-info 4
 
Classifier/Addr/MPLS set control_driven_ 1
Classifier/Addr/MPLS enable-on-demand
Classifier/Addr/MPLS enable-ordered-control
[$n3 get-module "MPLS"] enable-data-driven
 
	set tcp [new Agent/TCP]
	$ns attach-agent $n0 $tcp
	$tcp set fid_ 41
	$tcp set packetSize_ 1024
	set src0 [new Application/FTP]
	$src0 set rate_ 256Kb
	$src0 set fid_ 41
	$src0 attach-agent $tcp
 
 
	set udp1 [new Agent/UDP]
	$ns attach-agent $n1 $udp1
	$udp1 set fid_ 42
	$udp1 set packetSize_ 500
	set src1 [new Application/Traffic/CBR]
	$src1 set packetSize_ 500
	$src1 set rate_ 64Kb
	$src1 set fid_ 42
	$src1 attach-agent $udp1
 
	set udp2 [new Agent/UDP]
	$ns attach-agent $n2 $udp2
	$udp2 set fid_ 43
	$udp2 set packetSize_ 500
	set src2 [new Application/Traffic/CBR]
	$src2 set packetSize_ 500
	$src2 set rate_ 800Kb
	$src2 set fid_ 43;
	$src2 attach-agent $udp2
 
	set Dst0_ [new Agent/TCPSink]
	$ns attach-agent $n19 $Dst0_
	set Dst1_ [new Agent/LossMonitor]
	$ns attach-agent $n20 $Dst1_
	set Dst2_ [new Agent/LossMonitor]
	$ns attach-agent $n21 $Dst2_
 
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
 
proc notify-erlsp-setup {node lspid} {
global src0 src1 src2
set module [$node get-module "MPLS"]
set ns [Simulator instance]
	if {[$node id] == 3} {
	puts "	o The CR-LSP of lspid $lspid has been just established at [$ns now]"
		switch $lspid {
		1100 { $module bind-flow-erlsp 19 41 $lspid
		$src0 start
		}
		1200 { $module bind-flow-erlsp 20 42 $lspid
		$src1 start
		}
		1300 { $module bind-flow-erlsp 21 43 $lspid
		$src2 start
		}
		default {
		puts "error"
		exit 1
		}
		}
	}
}
proc notify-erlsp-fail {node status lspid tr} {
puts "nodeid=[$node id] : status=$status lspid=$lspid tr=$tr"
}
 
Simulator instproc refresh-cbq {} {
        $self instvar linked_mplsnodes_
        set len [llength $linked_mplsnodes_]
        for {set i 0} {$i < $len} {incr i} {
                set mplsnd [lindex $linked_mplsnodes_ $i]
                set mplsModule [$mplsnd  get-module "MPLS"]
                for {set k $i} {$k < $len} {incr k} {
                    set peer [lindex $linked_mplsnodes_ $k]
                    if { [lsearch [$mplsnd set neighbor_] $peer] >-1 } {
                        if { [$mplsnd is-neighbor $peer] == 1 }	{
                             set peerModule [$peer get-module "MPLS"]
                             set peerid [[$peerModule node] id]
                             set nhop [$mplsModule get-nexthop $peerid]                             
                             $mplsModule refresh-RTS-cbq $nhop
                        }
                    }
                }
        }
}
 
 
proc constraint-based-routing { lspid sLSR dLSRid bw } {
	set sLSRmodule [$sLSR get-module "MPLS"]
	set er [$sLSRmodule constraint-based-routing $dLSRid $bw]
	if {$er != -1} {
		puts "--> The result of constraint-based routing for lspid $lspid : Explicit Route=$er"
		$sLSRmodule setup-crlsp $dLSRid $er $lspid $bw 400B 200B 7 3
		#$sLSRmodule setup-crlsp  $dLSRid  $er  $lspid  $bw 400B 200B 7 3
	} else {
		puts "--> The result of constraint-based routing for lspid $lspid : Explicit Route= No path"
	}
}
 
$ns at 0.0	"constraint-based-routing 1100 $n3 12 256K"		
$ns at 0.2	"constraint-based-routing 1200 $n3 12 64K"		
$ns at 0.4	"constraint-based-routing 1300 $n3 12 800K"		
 
$ns rtmodel-at 8.0 down $n4 $n16
 
$ns rtmodel-at 9.0 up $n4 $n16  
 
$ns at 8.0 "$ns cfg-cbq-for-SBTS      10  DropTail    1     0.1   auto       0"
$ns at 8.0 "$ns cfg-cbq-for-HBTS      10  DropTail    1     0.05  auto       0"
$ns at 8.0 "$ns cfg-cbq-for-RTS       10  DropTail    0     0.8   auto       0"
$ns at 8.0 "$ns cfg-cbq-for-STS       10  DropTail    1     0.05  auto       0"
 
$ns at 8.0 "$ns bind-flowid-to-SBTS 0"
$ns at 8.0 "$ns bind-flowid-to-SBTS 41"
$ns at 8.0 "$ns bind-flowid-to-SBTS 1010"
$ns at 8.0 "$ns bind-flowid-to-STS 42"
$ns at 8.0 "$ns bind-flowid-to-STS 1020"
$ns at 8.0 "$ns bind-flowid-to-HBTS 43"
$ns at 8.0 "$ns bind-flowid-to-HBTS 1030"
 
 
$ns at 9.0 "$ns cfg-cbq-for-SBTS      10  DropTail    1     0.1   auto       0"
$ns at 9.0 "$ns cfg-cbq-for-HBTS      10  DropTail    1     0.05  auto       0"
$ns at 9.0 "$ns cfg-cbq-for-RTS       10  DropTail    0     0.8   auto       0"
$ns at 9.0 "$ns cfg-cbq-for-STS       10  DropTail    1     0.05  auto       0"
 
$ns at 9.0 "$ns bind-flowid-to-SBTS 0"
$ns at 9.0 "$ns bind-flowid-to-SBTS 41"
$ns at 9.0 "$ns bind-flowid-to-SBTS 1010"
$ns at 9.0 "$ns bind-flowid-to-STS 42"
$ns at 9.0 "$ns bind-flowid-to-STS 1020"
$ns at 9.0 "$ns bind-flowid-to-HBTS 43"
$ns at 9.0 "$ns bind-flowid-to-HBTS 1030"
 
$ns at 10.0 "finish"
 
$ns run
 
