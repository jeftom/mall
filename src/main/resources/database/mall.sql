-- MySQL Script generated by MySQL Workbench
-- Thu Nov  2 09:34:26 2017
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mall
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mall` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mall` ;

-- -----------------------------------------------------
-- Table `mall`.`t_good`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_good` (
  `id` BIGINT(20) NOT NULL COMMENT '主键',
  `categoryId` BIGINT(20) NULL COMMENT '类目id',
  `goodName` VARCHAR(100) NULL COMMENT '商品名称',
  `description` VARCHAR(200) NULL COMMENT '商品描述',
  `promotion` DECIMAL(10,2) NULL COMMENT '促销价',
  `price` DECIMAL(10,2) NULL COMMENT '价格',
  `saleVolume` INT NULL COMMENT '销量',
  `discount` INT NULL COMMENT '折扣',
  `stock` INT NULL COMMENT '库存',
  `isOnSale` CHAR(1) NULL COMMENT '上下架   1上架 0下架  默认上架',
  `isHot` CHAR(1) NULL COMMENT '是否热销  1 是 0否',
  `isNew` CHAR(1) NULL COMMENT '是否新品   1是 0否',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `lastUpdateDate` DATETIME NULL COMMENT '最后更新时间',
  `isFreight` CHAR(1) NULL COMMENT '是否包邮  1是 0否',
  `brandId` BIGINT(20) NULL COMMENT '品牌ID',
  `sellerId` BIGINT(20) NULL COMMENT '商户id',
  `visitTotal` INT NULL COMMENT '浏览量',
  `goodNo` VARCHAR(45) NULL COMMENT '商品编码',
  `mainImgUrl` VARCHAR(200) NULL COMMENT '主图地址',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_order` (
  `id` BIGINT(20) NOT NULL,
  `orderNo` VARCHAR(45) NULL COMMENT '订单号',
  `goodSnapShotId` BIGINT(20) NULL COMMENT '商品快照id',
  `deliveryId` BIGINT(20) NULL COMMENT '收货地址id',
  `orderStatus` CHAR(1) NULL COMMENT '订单状态',
  `orderType` CHAR(1) NULL COMMENT '订单类型',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '更新时间',
  `userId` BIGINT(20) NULL COMMENT '用户ID',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_delivery` (
  `id` BIGINT(20) NOT NULL,
  `userId` BIGINT(20) NULL COMMENT '用户id',
  `recipients` VARCHAR(45) NULL COMMENT '收件人',
  `phone` VARCHAR(45) NULL COMMENT '电话',
  `province` VARCHAR(45) NULL COMMENT '省',
  `city` VARCHAR(45) NULL COMMENT '市',
  `area` VARCHAR(45) NULL COMMENT '区',
  `address` VARCHAR(45) NULL COMMENT '详细地址',
  `postCode` VARCHAR(45) NULL COMMENT '邮编',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '修改时间',
  `wechat` VARCHAR(45) NULL COMMENT '微信账号',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_good_snapshot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_good_snapshot` (
  `id` BIGINT(20) NOT NULL,
  `goodSnapShotNo` VARCHAR(45) NULL COMMENT '商品快照编码',
  `goodName` VARCHAR(100) NULL COMMENT '商品名称',
  `goodDescription` VARCHAR(200) NULL COMMENT '商品描述',
  `promotion` DECIMAL(10,2) NULL COMMENT '促销价',
  `price` DECIMAL(10,2) NULL COMMENT '原价',
  `discount` INT NULL COMMENT '折扣',
  `mainImgUrl` VARCHAR(200) NULL COMMENT '商品主图',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `goodId` BIGINT(20) NULL COMMENT '商品id',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_mall_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_mall_log` (
  `id` BIGINT(20) NOT NULL,
  `goodNo` VARCHAR(45) NULL COMMENT '商品编码',
  `sellerNo` VARCHAR(45) NULL COMMENT '店铺编码',
  `type` CHAR(1) NULL COMMENT '�' /* comment truncated */ /*型
1 浏览
2下单
3支付
*/,
  `ipAddress` VARCHAR(45) NULL COMMENT 'ip地址',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `description` VARCHAR(100) NULL COMMENT '操作描述',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_point`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_point` (
  `id` BIGINT(20) NOT NULL,
  `userId` BIGINT(20) NULL COMMENT '用户id',
  `point` INT NULL COMMENT '积分',
  `level` INT NULL COMMENT '等级',
  `levelName` VARCHAR(45) NULL COMMENT '等级名称',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '修改时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_wallet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_wallet` (
  `id` INT NOT NULL,
  `userId` BIGINT(20) NULL,
  `money` DECIMAL(10,2) NULL COMMENT '余额',
  `t_walletcol` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`table2` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_banner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_banner` (
  `id` BIGINT(20) NOT NULL,
  `name` VARCHAR(45) NULL COMMENT '轮播名称',
  `imgUrl` VARCHAR(200) NULL COMMENT '轮播图',
  `actionUrl` VARCHAR(100) NULL COMMENT '跳转链接',
  `visitTotal` INT NULL COMMENT '访问量',
  `status` CHAR(1) NULL COMMENT '0 正常   1 删除',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '修改时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_activity` (
  `id` BIGINT(20) NOT NULL,
  `name` VARCHAR(45) NULL COMMENT '活动名称',
  `status` CHAR(1) NULL COMMENT '状态  0正常  1删除',
  `activityType` CHAR(1) NULL COMMENT '活动类型 0 秒杀 1 拼团  2 优选',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '修改时间',
  `target` CHAR(1) NULL COMMENT '目' /* comment truncated */ /*�� 
0 小程序
1 app
2 网站*/,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_member` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL COMMENT '姓名',
  `sex` CHAR(1) NULL COMMENT '性别',
  `headImg` VARCHAR(200) NULL COMMENT '头像',
  `nickName` VARCHAR(45) NULL COMMENT '昵称',
  `certificatedId` VARCHAR(45) NULL COMMENT '证件号码',
  `certificateType` CHAR(1) NULL COMMENT '证件类型',
  `mobile` VARCHAR(45) NULL COMMENT '手机号',
  `bornDate` VARCHAR(20) NULL COMMENT '生日',
  `email` VARCHAR(45) NULL COMMENT '电子邮箱',
  `address` VARCHAR(200) NULL COMMENT '联系地址',
  `status` CHAR(1) NULL COMMENT '状态  1注销  0正常',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '修改时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_category` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_brand` (
  `id` INT NOT NULL,
  `brandName` VARCHAR(45) NULL COMMENT '品牌名称',
  `brandImg` VARCHAR(200) NULL COMMENT '品牌图片',
  `createDate` DATETIME NULL COMMENT '创建时间',
  `updateDate` DATETIME NULL COMMENT '更新时间',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mall`.`t_good_attr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mall`.`t_good_attr` (
  `id` BIGINT(20) NOT NULL,
  `goodId` BIGINT(20) NULL,
  `` VARCHAR(45) NULL COMMENT '规格名称',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
