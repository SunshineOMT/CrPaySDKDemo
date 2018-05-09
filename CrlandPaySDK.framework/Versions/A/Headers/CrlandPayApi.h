//
//  CrlandPayApi.h
//  CrlandPaySDK
//
//  Created by Crland on 2018/4/28.
//  Copyright © 2018年 Crland. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CrlandBaseRequestSuccessBlock) (__kindof NSDictionary *successResult);

@interface CrlandPayApi : NSObject

/*!
 * @abstract 查询房屋欠费列表项
 *
 * @param params 请求参数
 * @param success 请求成功回调
 *
 */

+ (void)getHousePayItemList:(NSDictionary *)params
                    success:(CrlandBaseRequestSuccessBlock)success;

/*!
 * @abstract 查询房屋账单列表
 *
 * @param params 请求参数
 * @param success 请求成功回调
 *
 */

+ (void)getBillList:(NSDictionary *)params
            success:(CrlandBaseRequestSuccessBlock)success;

/*!
 * @abstract 查询账单详情
 *
 * @param params 请求参数
 * @param success 请求成功回调
 *
 */

+ (void)getBillDetail:(NSDictionary *)params
              success:(CrlandBaseRequestSuccessBlock)success;

/*!
 * @abstract 查询缴费状态
 *
 * @param params 请求参数
 * @param success 请求成功回调
 *
 */

+ (void)getPayStatus:(NSDictionary *)params
             success:(CrlandBaseRequestSuccessBlock)success;

@end


