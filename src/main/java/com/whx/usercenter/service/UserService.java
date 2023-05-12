package com.whx.usercenter.service;

import com.whx.usercenter.model.domain.User;
import com.baomidou.mybatisplus.extension.service.IService;

import javax.servlet.http.HttpServletRequest;

/**
* @author 崽崽
* @description 针对表【user(用户)】的数据库操作Service
* @createDate 2023-04-21 16:57:19
*/
public interface UserService extends IService<User> {
    /**
     * 注册
     * @param userAccount
     * @param userPassword
     * @param checkPassword
     * @return
     */
    long userRegister(String userAccount , String userPassword,String checkPassword,String planetCode);

    /**
     * 用户登入
     * @param userAccount
     * @param userPassword
     * @param request
     * @return
     */
    User userLogin(String userAccount , String userPassword , HttpServletRequest request);

    /**
     * 用户脱敏
     * @param originUser
     * @return
     */
    User getSafetyUser(User originUser);

    /**
     * 注销
     * @param request
     * @return
     */
    int userLogout(HttpServletRequest request);
}
