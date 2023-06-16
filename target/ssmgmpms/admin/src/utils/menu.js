const menu = {
    list() {
        return [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-flashlightopen","buttons":["新增","查看","修改","删除","查看评论"],"menu":"厨师信息","menuJump":"列表","tableName":"chushixinxi"}],"menu":"厨师信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","查看评论"],"menu":"厨师服务","menuJump":"列表","tableName":"chushifuwu"}],"menu":"厨师服务管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","删除","审核"],"menu":"服务订单","menuJump":"列表","tableName":"fuwudingdan"}],"menu":"服务订单管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除"],"menu":"菜品分类","menuJump":"列表","tableName":"caipinfenlei"}],"menu":"菜品分类管理"},{"child":[{"appFrontIcon":"cuIcon-vip","buttons":["新增","查看","修改","删除","查看评论"],"menu":"预制菜","menuJump":"列表","tableName":"yuzhicai"}],"menu":"预制菜管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-form","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"通知公告","tableName":"news"}],"menu":"系统管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","删除"],"menu":"未支付订单","tableName":"orders/未支付"},{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"已发货订单","tableName":"orders/已发货"},{"appFrontIcon":"cuIcon-goods","buttons":["查看","发货","删除"],"menu":"已支付订单","tableName":"orders/已支付"},{"appFrontIcon":"cuIcon-paint","buttons":["查看","删除"],"menu":"已完成订单","tableName":"orders/已完成"},{"appFrontIcon":"cuIcon-rank","buttons":["查看","删除"],"menu":"已取消订单","tableName":"orders/已取消"},{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"已退款订单","tableName":"orders/已退款"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"厨师信息列表","menuJump":"列表","tableName":"chushixinxi"}],"menu":"厨师信息模块"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","预约"],"menu":"厨师服务列表","menuJump":"列表","tableName":"chushifuwu"}],"menu":"厨师服务模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"预制菜列表","menuJump":"列表","tableName":"yuzhicai"}],"menu":"预制菜模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["查看","删除","支付"],"menu":"服务订单","menuJump":"列表","tableName":"fuwudingdan"}],"menu":"服务订单管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看"],"menu":"厨师信息列表","menuJump":"列表","tableName":"chushixinxi"}],"menu":"厨师信息模块"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["查看","预约"],"menu":"厨师服务列表","menuJump":"列表","tableName":"chushifuwu"}],"menu":"厨师服务模块"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["查看"],"menu":"预制菜列表","menuJump":"列表","tableName":"yuzhicai"}],"menu":"预制菜模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]
    }
}
export default menu;
