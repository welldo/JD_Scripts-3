# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /scripts/docker/auto_help.sh collect >> /scripts/logs/auto_help_collect.log 2>&1

##############短期活动##############

#3.18-3.31小天才联合活动抽奖机
50 7 * * * node /scripts/jd_xtc.js >> /scripts/logs/jd_xtc.log 2>&1

##############长期活动##############

#宠汪汪
35 0-23/2 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
#宠汪汪兑换
59 7,15,23 * * * node /scripts/jd_joy_reward.js >> /scripts/logs/jd_joy_reward.log 2>&1
#点点券
10 6,20 * * * node /scripts/jd_necklace.js >> /scripts/logs/jd_necklace.log 2>&1
#京喜签到
0 3,8 * * * node /scripts/jd_jxsign.js >> /scripts/logs/jd_jxsign.log 2>&1
#东东超市兑换奖品
59 23 * * * node /scripts/jd_blueCoin.js >> /scripts/logs/jd_blueCoin.log 2>&1
#财富岛
35 * * * * node /scripts/jd_cfd.js >> /scripts/logs/jd_cfd.log 2>&1
#京喜财富岛互助互助
18 0,18 * * * node /scripts/jd_cfd_help.js >> /scripts/logs/jd_cfd_help.log 2>&1
#京喜财富岛合成珍珠
30 0-23/2 * * * node /scripts/jd_cfd_pearl.js >> /scripts/logs/jd_cfd_pearl.log 2>&
#京喜财富岛合成珍珠互助
20 0 * * * node /scripts/jd_cfd_mooncake_help.js >> /scripts/logs/jd_cfd_mooncake_help.log 2>&
#财富岛珍珠兑换
59 0-23/1 * * * node /scripts/jd_cfd_pearl_ex.js >> /scripts/logs/jd_cfd_pearl_ex.log 2>&
#京东汽车
10 4,20 * * * node /scripts/jd_car.js >> /scripts/logs/jd_car.log 2>&1
#京京东汽车兑换
0,50 0 * * * node /scripts/jd_car_exchange.js >> /scripts/logs/jd_car_exchange.log 2>&1
#金榜创造营
13 5,19 * * * node /scripts/jd_gold_creator.js >> /scripts/logs/jd_gold_creator.log 2>&1
#京东多合一签到
0 4,14 * * * node /scripts/jd_bean_sign.js >> /scripts/logs/jd_bean_sign.log 2>&1
#半点京豆雨
30 0-23/1 * * * node /scripts/jd_redrain_half.js >> /scripts/logs/jd_redrain_half.log 2>&1
#整点京豆雨
0 0-23/1 * * * node /scripts/jd_redrain.js >> /scripts/logs/jd_redrain.log 2>&1
#东东超市
39 * * * * node /scripts/jd_superMarket.js >> /scripts/logs/jd_superMarket.log 2>&1
#领京豆额外奖励
10 3,9 * * * node /scripts/jd_bean_home.js >> /scripts/logs/jd_bean_home.log 2>&1
#京东资产变动通知
0 7,18 * * * node /scripts/jd_bean_change.js >> /scripts/logs/jd_bean_change.log 2>&1
#京东极速版
0 1,7 * * * node /scripts/jd_speed_sign.js >> /scripts/logs/jd_speed_sign.log 2>&1
#取关京东店铺和商品
5 23 * * * node /scripts/jd_unsubscribe.js >> /scripts/logs/jd_unsubscribe.log 2>&1
#东东萌宠
45 6-18/6 * * * node /scripts/jd_pet.js >> /scripts/logs/jd_pet.log 2>&1
#东东萌宠好友助力
30 5,18 * * * node /scripts/jd_pet_help.js >> /scripts/logs/jd_pet_help.log 2>&1
#跳一跳
1 3,9,18 * * * node /scripts/jd_jump.js >> /scripts/logs/jd_jump.log 2>&1
#5G超级盲盒
36 0,1-23/3 * * * node /scripts/jd_mohe.js >> /scripts/logs/jd_mohe.log 2>&1
#5G超级盲盒好友助力
5 0,19 * * * node /scripts/jd_mohe_help.js >> /scripts/logs/jd_mohe_help.log 2>&1
#种豆得豆
44 0-23/6 * * * node /scripts/jd_plantBean.js >> /scripts/logs/jd_plantBean.log 2>&1
#种豆得豆好友助力
40 8,17 * * * node /scripts/jd_plantBean_help.js >> /scripts/logs/jd_plantBean_help.log 2>&1
#东东农场日常任务
35 6-18/6 * * * node /scripts/jd_fruit_task.js >> /scripts/logs/jd_fruit_task.log 2>&1
#东东农场好友删减奖励
20 5,17 * * * node /scripts/jd_fruit_friend.js >> /scripts/logs/jd_fruit_friend.log 2>&1
#东东农场好友互助奖励
20 8,17 * * * node /scripts/jd_fruit_help.js >> /scripts/logs/jd_fruit_help.log 2>&1
#删除优惠券
0 3,20 * * * node /scripts/jd_delCoupon.js >> /scripts/logs/jd_delCoupon.log 2>&1
#摇京豆
5 2,19 * * * node /scripts/jd_club_lottery.js >> /scripts/logs/jd_club_lottery.log 2>&1
#东东工厂
40 * * * * node /scripts/jd_jdfactory.js >> /scripts/logs/jd_jdfactory.log 2>&1
#领金贴
10 1 * * * node /scripts/jd_jin_tie.js >> /scripts/logs/jd_jin_tie.log 2>&1
#东东健康社区
13 2,5,20 * * * node /scripts/jd_health.js >> /scripts/logs/jd_health.log 2>&1
#东东健康社区收集能量
5-45/20 * * * * node /scripts/jd_health_collect.js >> /scripts/logs/jd_health_collect.log 2>&1
#东东健康社区好友互助
5 4,14 * * * node /scripts/jd_health_help.js >> /scripts/logs/jd_health_help.log 2>&1
#秒秒币
10 2 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1
#东东乐园大风车
9 0-23/3 * * * node /scripts/jd_ddnc_farmpark.js >> /scripts/logs/jd_ddnc_farmpark.log 2>&1
#京喜工厂
39 * * * * node /scripts/jd_dreamFactory.js >> /scripts/logs/jd_dreamFactory.log 2>&1
#京喜工厂招工互助
5 6,18 * * * node /scripts/jd_dreamFactory_help.js >> /scripts/logs/jd_dreamFactory_help.log 2>&1
#京喜工厂开团
39 * * * * node /scripts/jd_dreamFactory_tuan.js >> /scripts/logs/jd_dreamFactory_tuan.log 2>&1
#闪购盲盒
20 4,16,19 * * * node /scripts/jd_sgmh.js >> /scripts/logs/jd_sgmh.log 2>&1
#进店领豆
1 0 * * *  node /scripts/jd_shop.js >> /scripts/logs/jd_shop.log 2>&1
#摇钱树
23 0-23/2 * * * node /scripts/jd_moneyTree.js >> /scripts/logs/jd_moneyTree.log 2>&1
#京东金融养猪猪
32 0-23/6 * * * node /scripts/jd_pigPet.js >> /scripts/logs/jd_pigPet.log 2>&1
#京东直播
10-20/5 12 * * * node /scripts/jd_live.js >> /scripts/logs/jd_live.log 2>&1
#京东快递
40 0 * * * node /scripts/jd_kd.js >> /scripts/logs/jd_kd.log 2>&1
#美丽研究院
16 9,15,17 * * * node /scripts/jd_beauty.js >> /scripts/logs/jd_beauty.log 2>&1
#京喜牧场
48 0-23/3 * * * node /scripts/jd_jxmc.js >> /scripts/logs/jd_jxmc.log 2>&1
#京喜牧场红包
23 0-23/3 * * * node /scripts/jd_jxmc_hb.js >> /scripts/logs/jd_jxmc_hb.log 2>&1
#京东试用
30 10 * * * node /scripts/jd_try.js >> /scripts/logs/jd_try.log 2>&1
#领现金
42 0-23/6 * * * node /scripts/jd_cash.js >> /scripts/logs/jd_cash.log 2>&1
#赚金币
0 8 * * * node /scripts/jd_zjb.js >> /scripts/logs/jd_zjb.log 2>&1
#京东赚赚
10 0 * * * node /scripts/jd_jdzz.js >> /scripts/logs/jd_jdzz.log 2>&1
#特务
1,10 0 * * * node /scripts/jd_superBrand.js >> /scripts/logs/jd_superBrand.log 2>&1
#送豆得豆
5 0,12 * * * node /scripts/jd_sendBeans.js >> /scripts/logs/jd_sendBeans.log 2>&1
#众筹许愿池
20 0,2 * * * node /scripts/jd_wish.js >> /scripts/logs/jd_wish.log 2>&1
#宠汪汪偷狗粮
40 0-21/3 * * * node /scripts/jd_joy_steal.js >> /scripts/logs/jd_joy_steal.log 2>&1
#汪汪乐园每日任务
0 0,7,9,17,20 * * * node /scripts/jd_joy_park_task.js >> /scripts/logs/jd_joy_park_task.log 2>&1
#汪汪乐园养joy
20 0-23/3 * * * node /scripts/jd_joy_park.js >> /scripts/logs/jd_joy_park.log 2>&1
#领现金兑换
0 0 * * * node /scripts/jd_cash_exchange.js >> /scripts/logs/jd_cash_exchange.log 2>&1
#宠汪汪喂食
15 0-23/1 * * * node /scripts/jd_joy_feedPets.js >> /scripts/logs/jd_joy_feedPets.log 2>&1
#宠汪汪赛跑
15 10,12 * * * node /scripts/jd_joy_run.js >> /scripts/logs/jd_joy_run.log 2>&1
#领京豆
38 8,13 * * * node /scripts/jd_mdou.js >> /scripts/logs/jd_mdou.log 2>&1
#清空购物车
0 1 * * * node /scripts/jd_cleancart.js >> /scripts/logs/jd_cleancart.log 2>&1
#店铺签到
2 2 * * * node /scripts/jd_dpqd.js >> /scripts/logs/jd_dpqd.log 2>&1
#取关主播
55 6 * * * node /scripts/jd_unsubscriLive.js >> /scripts/logs/jd_unsubscriLive.log 2>&1
#女装盲盒
45 2,20 * * * node /scripts/jd_nzmh.js >> /scripts/logs/jd_nzmh.log 2>&1
#积分换话费
43 5,17 * * * node /scripts/jd_dwapp.js >> /scripts/logs/jd_dwapp.log 2>&1
# 领券中心签到
5 0 * * * node /scripts/jd_ccSign.js >> /scripts/logs/jd_ccSign.log 2>&1
#超级直播间盲盒抽京豆
1 18,20 * * * node /scripts/jd_super_mh.js >> /scripts/logs/jd_super_mh.log 2>&1
# 内容鉴赏官
5 2,5,16 * * * node /scripts/jd_connoisseur.js >> /scripts/logs/jd_connoisseur.log 2>&1
# 东东世界兑换
0 0 * * * node /scripts/jd_ddworld_exchange.js >> /scripts/logs/jd_ddworld_exchange.log 2>&1
# 天天提鹅
20 * * * * node /scripts/jd_daily_egg.js >> /scripts/logs/jd_daily_egg.log 2>&1
# 翻翻乐
20 * * * * node /scripts/jd_big_winner.js >> /scripts/logs/jd_big_winner.log 2>&1
# 京东极速版签到免单
18 3 * * * node /scripts/jd_speed_signfree.js >> /scripts/logs/jd_speed_signfree.log 2>&1
# 牛牛福利
1 9,19 * * * node /scripts/jd_nnfl.js >> /scripts/logs/jd_nnfl.log 2>&1
#赚京豆
10,40 0,1 * * * node /scripts/jd_syj.js >> /scripts/logs/jd_syj.log 2>&1
#京东饭粒
46 1,19 * * * node /scripts/jd_fanli.js >> /scripts/logs/jd_fanli.log 2>&1
#农场集勋章
16 7,16 * * * node /scripts/jd_medal.js >> /scripts/logs/jd_medal.log 2>&1
#美丽研究院--兑换
1 7,12,19 * * * node /scripts/jd_beauty_ex.js >> /scripts/logs/jd_beauty_ex.log 2>&1
#京东保价
41 23 * * * node /scripts/jd_price.js >> /scripts/logs/jd_price.log 2>&1
#见缝插针
15 3,20 * * * node /scripts/jd_jfcz.js >> /scripts/logs/jd_jfcz.log 2>&1
#玩一玩成就
0 8,22 * * * node /scripts/jd_wyw.js >> /scripts/logs/jd_wyw.log 2>&1
# 京喜签到-喜豆
20 1,8 * * * node /scripts/jx_sign.js >> /scripts/logs/jx_sign.log 2>&1
# 京东答题领金豆
22 6,18 * * * node /scripts/jx_jddt.js >> /scripts/logs/jx_jddt.log 2>&1
# 京东通天塔--签到
31 8,21 * * * node /scripts/jd_m_sign.js >> /scripts/logs/jd_m_sign.log 2>&1
# 通天塔签到共建
0 0,3 * * * node /scripts/jd_babel_sign.js >> /scripts/logs/jd_babel_sign.log 2>&1
# 京东超级盒子
4 2,3,22 * * * node /scripts/jd_cjhz.js >> /scripts/logs/jd_superbox.log 2>&1
# 头文子J
10 8,18 * * * node /scripts/jd_mpdzcar.js >> /scripts/logs/jd_mpdzcar.log 2>&1
# 头文字J 游戏
10 6,10,12 * * * node /scripts/jd_mpdzcar_game.js >> /scripts/logs/jd_mpdzcar_game.log 2>&1
# 头文字J 助力
10 3,19 * * * node /scripts/jd_mpdzcar_help.js >> /scripts/logs/jd_mpdzcar_help.log 2>&1
#京东签到图形验证
14 2,10 * * * node /scripts/jd_sign_graphics.js >> /scripts/logs/jd_sign_graphics.log 2>&1
#京豆兑换为喜豆
33 9 * * * node /scripts/jd_exchangejxbeans.js >> /scripts/logs/jd_exchangejxbeans.log 2>&1
#京喜财富岛红包兑换
0 * * * * node /scripts/jx_exchange_fortune.js >> /scripts/logs/jx_exchange_fortune.log 2>&1
#微信签到领红包
3 0,11 * * * node /scripts/jd_wq_wxsign.js >> /scripts/logs/jd_wq_wxsign.log 2>&1
#颜究种植园
30 6-20/3 * * *  node /scripts/jd_xinruimz.js >> /scripts/logs/jd_xinruimz.log 2>&1
#东东健康社区兑换5豆
2 0 * * * node /scripts/jd_health_exchange_5.js >> /scripts/logs/jd_health_exchange_5.log 2>&1
#东东健康社区兑换10豆
1 0 * * * node /scripts/jd_health_exchange_10.js >> /scripts/logs/jd_health_exchange_10.log 2>&1
#东东健康社区兑换20豆
0 0 * * * node /scripts/jd_health_exchange_20.js >> /scripts/logs/jd_health_exchange_20.log 2>&1
#京东小魔方
30 3,20 * * * node /scripts/jd_mofang.js >> /scripts/logs/jd_mofang.log 2>&1
#东东电竞经理
20 0-23/2 * * * node /scripts/jd_EsportsManager.js >> /scripts/logs/jd_EsportsManager.log 2>&1
#京豆夺宝
40,45 23 * * * node /scripts/jd_duobao.js >> /scripts/logs/jd_duobao.log 2>&1
#京东金榜
9 7 * * * node /scripts/jd_gold_sign.js >> /scripts/logs/jd_gold_sign.log 2>&1
#京东特价翻翻乐
20 0-23/3 * * * node /scripts/jd_jdtj_winner.js >> /scripts/logs/jd_jdtj_winner.log 2>&1
#京喜工厂商品列表详情
0 0,7,19 * * * node /scripts/jd_jxgckc.js >> /scripts/logs/jd_jxgckc.log 2>&1
#京东生鲜每日抽奖
10 7 * * * node /scripts/jd_sxLottery.js >> /scripts/logs/jd_sxLottery.log 2>&1
#赚京豆-瓜分京豆
10 0,9,12,15 * * * node /scripts/jd_zjd.js >> /scripts/logs/jd_zjd.log 2>&1
#京喜工厂开团助力
10 7 * * * node /scripts/jd_jxfactory.js >> /scripts/logs/jd_jxfactory.log 2>&1
#京东试用待领取通知
30 18 * * * node /scripts/jd_try_notify.js >> /scripts/logs/jd_try_notify.log 2>&1
#京东-京喜双签
23 11,20 * * * node /scripts/jd_jxsign.js >> /scripts/logs/jd_jxsign.log 2>&1
#京东金融天天拼图
20 0,16 * * * node /scripts/jd_ttpt.js >> /scripts/logs/jd_ttpt.log 2>&1
#汪汪乐园提现
0 0 * * * node /scripts/jd_joy_tx.js >> /scripts/logs/jd_joy_tx.log 2>&1