#!/sbin/sh
# workaround script by steadfasterX to ensure we have the required symlink on bootdevice
# modified by AndroPlus for LeEco Le Max 2

LOG=/tmp/recovery.log
F_LOG(){
   MSG="$1"
   echo "I:$TAG: $(date +%F_%T) - $MSG" >> $LOG
}
F_ELOG(){
   MSG="$1"
   echo "E:$TAG: $(date +%F_%T) - $MSG" >> $LOG
}

TAG="QSEECOMD"

F_LOG "Starting $0"
F_LOG "bootdevice check before actually doing anything: >$(ls -la /dev/block/ |grep bootdevice)<"
rm -Rf /dev/block/bootdevice >> $LOG
ln -vs /dev/block/platform/soc /dev/block/platform/soc/624000.ufshc >> $LOG
ln -vs /dev/block/platform/soc/624000.ufshc /dev/block/bootdevice >> $LOG
LNKERR=$?
F_LOG "bootdevice check after fixing the symlink: >$(ls -la /dev/block/ |grep bootdevice)<"
F_LOG "$0 finished with <$LNKERR>"

