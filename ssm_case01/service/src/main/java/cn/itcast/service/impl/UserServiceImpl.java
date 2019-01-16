package cn.itcast.service.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public User login(User user) {
        return userDao.login(user);
    }

    @Override
    public User findAll() {
        return userDao.findAll();
    }
}
