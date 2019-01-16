package cn.itcast.service;

import cn.itcast.domain.Cust;

import java.util.List;

public interface CustService {

    public List<Cust> findCustById(int uid);
}
