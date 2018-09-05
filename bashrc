# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias tcl="/m/test_main/fwtest/bin/tcl"
alias tcld=/m/$USER"_lab/fwtest/bin/tcl"

##### SVDEV BEGIN #####
source $HOME/.svdev_start
##### SVDEV END #####

# Below line added by Sandvine logon script
if [[ -f /etc/profile.d/sandvine.rc ]]; then . /etc/profile.d/sandvine.rc; fi

export CPU=LINUX_6_64

PS1='[\[\033]0;\w\007\]\[\e[35;1m\]\u\[\e[0m\]\[\e[32m\]@\h:\[\033[1;31m\]\[\e[34m\]\w\[\e[33m\]\$ \[\e[0m\]]\n\$'
###################GX#################
alias gxc='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/diameter/gx'
alias gxs='vim /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/policy.conf.policy_enforcement.sample'
alias gxnds='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/nds/freebsd'
alias gxcli='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/cli'
alias gxt='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/diameter/test/gx'
######################################
###################GY#################
alias gyc='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/diameter/gy'
alias gyt='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/diameter/test/gy'
alias gys='vim /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/policy.conf.online_charging.sample'
######################################
###################RG#################
alias rgc='cd /vobs/fw-policy/products/record_generator'
alias rgsp='vim /vobs/fw-policy/products/record_generator/freebsd/pts/freebsd/sandvine/etc/policy.conf.pts.record_generator.sample'
alias rgss='vim /vobs/fw-policy/products/record_generator/sde/sandvine/etc/policy.conf.sde.record_generator.sample'
alias rgcli='cd /vobs/fw-policy/products/record_generator/freebsd/pts/freebsd/sandvine/cli'
alias rgproducer='cd /vobs/fw-policy/products/record_generator/freebsd/pts/freebsd/sandvine/etc/record_generator/producer'
######################################
alias CPU_BSD='export CPU=SVOS9_64'
alias etc='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc'

alias test='cd /vobs/fw-policy/products/diameter/freebsd/meta/freebsd/pts/freebsd/sandvine/etc/diameter/test'
alias c=clear
###################################
alias reports='cd /usr/local/sandvine/reports'
alias datasets='cd /usr/local/sandvine/reports/lib/report/datasets'
alias etc='cd /usr/local/sandvine/etc'
#####################################
alias cnd='cd /vobs/fw/application/cnd'

alias CPU_VPL='export CPU=LINUX_7_64'
alias recon='cd /vobs/fw/support/reconciliation/'
alias msdprog='cd /vobs/fw/products/management/progs/msd'
alias cndprog='cd /vobs/fw/products/pts8210/progs/'
alias msd='cd /vobs/fw/application/management/'
alias objs='cd /vobs/fw/obj/'
alias launcherrows='pdbClient -c "lst devices/launcher/1/launcherTable/launcherEntry/"'
alias ll='ls -ltr'

alias platformConfigs='cd /vobs/fw/products/pts8210/ptsd/centos/sandvine/etc/platformConfigs'

set -o emacs
set force_no_bell=True
alias fw='cd /vobs/fw'
alias slbc='cd /vobs/fw/support/softwareLBStats'
alias hlbc='cd /vobs/fw/application/lbc/'
alias slsco='lsco -s'
#echo "==============================="
###figlet Kiran
#echo "you have these tmux sessions"
#tmux ls
#echo "==============================="

alias tsvlog='sudo tail -f /var/log/svlog'
alias tpc=/m/test_main/fwtest/TLA/bin/tpc
#alias dptsmd='sudo rpm -e `rpm -qa | grep -e pts'[m|d]'`'

#alias svmk='svmk -j300 USE_BUILDFARM=1'
alias sockettable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/statsIntegration/1/stats/statsSocketKPITable"'
alias publishnow='sudo pdbClient -c "set /iso/org/dod/internet/private/enterprises/sandvine/devices/publishedExpressions/1/config/publishNow true"'
alias sii='sudo svcli -c "show interface inspection"'
alias flowtable='sudo pdbClient -c "lst devices/ptsd/1/stats/flowStats/summaryTable/"'
alias shunttable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/ptsm/1/stats/shuntsTable/shuntsEntry/"'
alias otherdropstable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/ptsm/1/stats/errors/errorTable/errorEntry"'
alias actiontable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/ptsm/1/stats/actions/summaryTable/summaryEntry"'
alias ptsmstats='sudo pdbClient -c "lst  /iso/org/dod/internet/private/enterprises/sandvine/devices/ptsm/1/stats/summaryTable/summaryEntry"'
alias lbsummarytable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/npu/1/stats/lbSummaryTable"'
alias summarytable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/ptsm/1/stats/summaryTable/summaryEntry"'
alias dataPortTable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/npu/1/stats/dataPortTable/dataPortEntry"'
alias dPortTable='sudo pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/npu/1/stats/dPortTable/dPortEntry"'
alias reconciliationstatus='sudo pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/reconciliation/1/config/"'
alias pluginstats='cat /usr/local/sandvine/data-collection/reconciliation/data/Statistics.out'
alias tlmake='make CPU=LINUX_7_64'
alias pconf='sudo vim /usr/local/sandvine/etc/policy.conf'
alias tlemake='make CPU=LINUX_7_64 enable_svlog=true enable_debug=true'
export CPU=LINUX_7_64
alias ctco='ct co -unr '

checkoutAndOpen() {

            if grep -q CHECKEDOUT `cleartool ls $1`
            then
                  echo ""
            else
                echo "Checking out $1"
                cleartool co -c "fixing UTs" $1
            fi
            vim $1
}
v() {
    while true
        do
            echo "enter the test case name"
            read file
            $(checkoutAndOpen) t_$file.policy
        done
}

t() {
    while true
        do
            echo "enter the test case name to run"
            read file
            tlemake $file
        done
}

findfailingtestcases() {
    for file in `find . -type f -name "t_*.policy" ` ;
        do
            compilationstring=$(echo $file |awk '{gsub(/::.*/,""); print substr($0,5,length($0)-11)}')
            compileOutput="$(tlemake $compilationstring 2>/dev/null)"
           #             echo "$compileOutput"
           strippedFileName=$(echo $file | awk '{gsub(/::.*/,""); print substr($0,3)}' 2>/dev/null)
                        echo "File-->$strippedFileName"
            if echo "$compileOutput" |grep -Eq "^In" 2>/dev/null
            then
                echo -e "\n\nTEST case Failed..  do you want to open(o) or print(p) file name"
                read option
                case $option in
                    o)
                        echo "=============OUTPUT======"
                        echo "$compileOutput"
                        echo "#########################"
                        echo "File-->$strippedFileName"
                        echo "openfile now ?"
                        read opennow
                        reopen=y
                        while true ;
                        do
                            checkoutAndOpen "$strippedFileName"
                            echo -e "\n ReCompile [Y/n]?"
                            read recompile
                            if [ "$recompile" == "n" ]
                            then
                                break
                            else
                                compileOutput="$(tlemake $compilationstring 2>/dev/null)"
                                if echo "$compileOutput" |grep -Eq "^In" 2>/dev/null
                                then
                                    echo "$compileOutput"
                                    echo -e "\nmore changes needed. Test case updation required"
                                    read dummy
                                else
                                    echo -e "\ntest case passed\n"
                                    break
                                fi
                            fi
                        done
                    ;;
                    p)
                        echo "=============OUTPUT======"
                        awk '{gsub(/::.*/,""); print substr($0,3)}' $file 2>/dev/null
                        echo "$compileOutput"
                        echo "#########################"
                    ;;
                    *)
                        echo "WRONG OPTION SELECTED"
                    ;;
                esac
            fi
        done
}

selectivereplace() {
    for file in `find . -type f ` ;
    do
        if grep -q ClassifierNetworkDataset $file
        then
            cleartool co -c "ClassifierNetworkDataset--->ClassifierNetworkDataSet" $file
            sed -i 's/ClassifierNetworkDataset/ClassifierNetworkDataSet/g' $file
        fi
    done
}

alias attach='tmux attach -t'
alias tls='tmux ls'
alias whichmode='show config service session-qualifier mode'
alias gis='git status'
alias gib='git branch'
alias gia='git add'
alias gipl='git pull'
alias gipu='git push'
pathprefix=
if hostname | grep -q blr-lbuild
then
    pathprefix=/net/blr-lview-3
elif hostname | grep -q wtl-lbuild
then
    pathprefix=/net/wtl-lview-6
fi
    alias svcode='cd $pathprefix/gitrepos/kmedlery/svcode'
    alias cupc='cd $pathprefix/gitrepos/kmedlery/svcode/support/subsystems/user_plane_controller'
    alias scupc='cd $pathprefix/gitrepos/kmedlery/svcode/support/userPlaneController'
    alias hupc='cd $pathprefix/gitrepos/kmedlery/svcode/include/userPlaneController'
    alias thupc='cd $pathprefix/gitrepos/kmedlery/svcode/include/transportPeers'
    alias tcupc='cd $pathprefix/gitrepos/kmedlery/svcode/support/transportPeers'
    alias svsdeprog='cd $pathprefix/gitrepos/kmedlery/svcode/products/sde/svsde/progs/svsde'
    alias svspmprog='cd $pathprefix/gitrepos/kmedlery/svcode/products/spm/svspm/progs/svspm ; svmk ALLDEPS=1 ; cd -'


function mkcsc {
  /usr/bin/find ./ -name '*.cpp' -or -name '*.h' -or -name '*.hpp' -or -name '*.pdb' -or -name '*.ypp' -or -name '*.test' -or -name '*.tcl' -or -name '*.cc' -or -name '*.cxx' -or -name '*.hxx' -or -name '*.c' > cscope.files

  cscope -bvqi cscope.files
  ctags -f TAGS -aBF --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -L cscope.files
}
shopt -s expand_aliases

function exectioncommand {
echo "-->$1"
`$1`
}

function compilecupc {
    if [ "$1" == "c" ]
    then
        cd $pathprefix/gitrepos/kmedlery/svcode/support/subsystems/user_plane_controller;svmk clean ; svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    else
        cd $pathprefix/gitrepos/kmedlery/svcode/support/subsystems/user_plane_controller;svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    fi
}

function compilescupc {
    if [ "$1" == "c" ]
    then
        cd $pathprefix/gitrepos/kmedlery/svcode/support/userPlaneController;svmk clean ; svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    else
        cd $pathprefix/gitrepos/kmedlery/svcode/support/userPlaneController;svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    fi
}

function compiletcupc {
#if [ "$2" == "d"]
    if [ "$1" == "c" ]
    then
        cd $pathprefix/gitrepos/kmedlery/svcode/support/transportPeers;svmk clean ; svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    else
        cd $pathprefix/gitrepos/kmedlery/svcode/support/transportPeers;svmk ;
        if [ $2 == "t" ]
        then
            svmk test ALLDEPS=1
        fi
        cd -
    fi
}


function compileall {
#1 -> clean or not
#2 -> test
    compilecupc $1 $2
    compilescupc $1 $2
    compiletcupc $1 $2
}

function removesde {
sudo rpm -qa --qf '%{NAME} %{URL}\n' | sudo grep -i 'sandvine' | sort | awk '{print $1}' | xargs yum erase -y ; yum clean all
}
alias installsde='yum install -y sde svsde-debuginfo svlibs-subsystems-debuginfo'

function removespm {
sudo rpm -qa --qf '%{NAME} %{URL}\n' | sudo grep -i 'sandvine' | sort | awk '{print $1}' | xargs yum erase -y ; yum clean all
}
alias installspm='yum install -y spm svspm-debuginfo svlibs-subsystems-debuginfo'

alias genlib='cd /net/blr-lfile-1/build_images/kmedlery/kmedlery_svcode/obj/LINUX_7_amd64/lib'
alias gebpath='cd /net/blr-lfile-2/build_images/kmedlery/kmedlery_svcode/obj'


function upcpdbsubsystemstats {
echo "----------------------------------------userPlaneController/1/stats/subsystem----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/subsystem"

echo "----------------------------------------userPlaneController/1/stats/subsystem/messages----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/subsystem/messages"

echo "----------------------------------------userPlaneController/1/stats/subsystem/errors----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/subsystem/errors"

echo "----------------------------------------userPlaneController/1/stats/subsystem/schemaDefinition----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/subsystem/schemaDefinition"


echo "----------------------------------------userPlaneController/1/stats/subsystem/sessionNotification----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/subsystem/sessionNotification"

}

function upcpdbstackstats {
echo "----------------------------------------userPlaneController/1/stats/stack/sessionContextSyncStats----------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/sessionContextSyncStats/sessionContextSyncStatsTable"

echo "----------------------------------------userPlaneController/1/stats/stack/stacks/1/messages----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/stacks/1/messages"

echo "----------------------------------------userPlaneController/1/stats/stack/stacks----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/stacks"

echo "----------------------------------------userPlaneController/1/stats/stack/peers----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers"

echo "----------------------------------------userPlaneController/1/stats/stack/peers/sessionContextPeers----------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers/sessionContextPeers"

echo "----------------------------------------userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextMessageCounterTable----------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextMessageCounterTable"
echo "----------------------------------------userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextMessageRateCounterTable----------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextMessageRateCounterTable"

echo "----------------------------------------userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextPeerStatsTable----------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextPeerStatsTable"

echo "----------------------------------------userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextErrorCountersTable----------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/stats/stack/peers/sessionContextPeers/sessionContextErrorCountersTable"
echo "--------------------------------------------------------------------------------------------------"

}

function upcpdbstats {

    if [ "$1" == "c" ]
    then
        upcpdbsubsystemstats
    elif [ "$1" == "s" ]
    then
        upcpdbstackstats
    else
        upcpdbsubsystemstats
        upcpdbstackstats
    fi
}

function upcpdbconfig {
echo "-------------------------------------userPlaneController/1/config-------------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/config"
echo "-------------------------------------userPlaneController/1/config/subsystem-------------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/config/subsystem"
echo "-------------------------------------userPlaneController/1/config/stack-------------------------------------------------------------"
pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/config/stack"
echo "-------------------------------------userPlaneController/1/config/stack/peerTable/-------------------------------------------------------------"
pdbClient -c "lst /iso/org/dod/internet/private/enterprises/sandvine/devices/userPlaneController/1/config/stack/peerTable/"
echo "--------------------------------------------------------------------------------------------------"
}

function settraces {
echo "-----setting the traces"

numberoftraces=`sudo pdbClient -c "ls /iso/org/dod/internet/private/enterprises/sandvine/devices/svtrace/1/config/channelTable/channelEntry/level" | wc -l`
numberoftraces=50
echo "--------numberoftraces-->$numberoftraces"
while [ $numberoftraces -gt 0 ];
do
      pdbClient -c "set /iso/org/dod/internet/private/enterprises/sandvine/devices/svtrace/1/config/channelTable/channelEntry/level/$numberoftraces 1000"
      echo "---inside numberoftraces-->$numberoftraces"
      sleep 1
      let numberoftraces-=1
done
echo "----- Done-----"

}
function clearlogs {
sudo rm -rf /var/log/*log*
}
