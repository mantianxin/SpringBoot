package com.lzw.ssm.mapper;

import com.lzw.ssm.pojo.Record;
import com.lzw.ssm.pojo.Recordto;
import com.lzw.ssm.pojo.ShowRecord;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;

/**
 * @author lizwl
 * @interface RecordtohutuMapper
 * @create 2020-02-28 22:43
 * @desc
 **/
@Component
@Mapper
public interface RecordtohutuMapper {
    //查询消费信息
    List<Recordto> getRecordlist();
    //增加消费信息(int)
    int recordAdd(Recordto record);
    //显示每月总消费
    List<ShowRecord> showtotalmonth();
    //年度总消费
    List<ShowRecord> showtotalyear(HashMap<String,Integer> map);
    //显示特定月份消费
    List<ShowRecord> showmonthtotal(HashMap<String,Object> map);
    //查询每周总消费
    List<ShowRecord> showweektotal(HashMap<String,Object> map);
    //日总消费
    List<ShowRecord> showdaytotal(HashMap<String,Object> map);
    //删除数据
    boolean deleteid(int id);
    //多条件查询
    List<Recordto> getRecordListtype(HashMap<String,String> map);
}
