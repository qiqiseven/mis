###2.根据设备编号，查询出设备检修报告（包括历史检修情况和材料消耗情况）
####select byjl.sbno,sblb.sbname,sblb.byzq,byxm.xmname,sblb.byzq,byjl.woker,byxh.xhnr,byxh.xhnumber,byjl.time from sblb,byjl,sbb,byxm,byxh where byjl.sbno=1 and byjl.byjlid=byxh.byxhid and byjl.sbno=sbb.sbno and sbb.sbid=sblb.sbid and sblb.sbid=byxm.sbid;
![image](https://github.com/qiqiseven/mis/blob/master/a2.PNG)
##数据库ER图：
![image](https://github.com/qiqiseven/mis/blob/master/er图.PNG)
##原型图
![image](https://github.com/qiqiseven/mis/blob/master/1.PNG)
![image](https://github.com/qiqiseven/mis/blob/master/2.PNG)
![image](https://github.com/qiqiseven/mis/blob/master/3.PNG)
