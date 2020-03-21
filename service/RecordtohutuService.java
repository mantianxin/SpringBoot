package com.lzw.ssm.service;



import com.github.pagehelper.PageHelper;
import com.lzw.ssm.mapper.RecordtohutuMapper;
import com.lzw.ssm.pojo.Recordto;
import com.lzw.ssm.pojo.ShowRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @author lizwl
 * @ClassName RecordtohutuService
 * @create 2020-02-28 22:43
 * @desc
 **/
@Service
public class RecordtohutuService {
    @Autowired
    RecordtohutuMapper recordhutuMapper;

    //添加记录信息
    public int recordAdd(Recordto record){
        return recordhutuMapper.recordAdd(record);
    }
    //查询配置信息
    public List<Recordto> getRecordlist(){
        List<Recordto> lists=  recordhutuMapper.getRecordlist();
        return  lists;
    }
    //显示每月总消费
    public List<ShowRecord> showtotalmonth(){
        List<ShowRecord> lists = recordhutuMapper.showtotalmonth();
        return  lists;
    }
    //显示特定月份特定年份数据
    public List<ShowRecord> showmonthtotal(HashMap<String,Object> map){
        List<ShowRecord> lists = recordhutuMapper.showmonthtotal(map);
        return lists;
    }
    //分页展示数据
    public List<Recordto> recordlists(int page, int size){
        PageHelper.startPage(page,size);
        List<Recordto> lists = recordhutuMapper.getRecordlist();
        return  lists;
    }
    //日总消费
    public List<ShowRecord> showdaytotal(HashMap<String,Object> map){
        List<ShowRecord> lists = recordhutuMapper.showdaytotal(map);
        return lists;

    }
    //统计每周总消费
   public  List<ShowRecord> showweektotal(HashMap<String,Object> map){
        List<ShowRecord> lists = recordhutuMapper.showweektotal(map);
        return lists;
    }
    //删除数据
    public boolean deleteid(int id){
        boolean i = recordhutuMapper.deleteid(id);
        return i;
    }
//    //多条件查询
    public List<Recordto> getRecordListtype(HashMap<String,String> map){
        String page = map.get("pages");
        String size = map.get("sizes");
        int pages = Integer.parseInt(page);
        int sizes = Integer.parseInt(size);
        PageHelper.startPage(pages,sizes);
        List<Recordto> list = recordhutuMapper.getRecordListtype(map);
        return list;
    }
    //年度总消费
   public  List<ShowRecord> showtotalyear(HashMap<String,String> map){
        HashMap<String,Integer> map2 = new HashMap<>();
        String year = map.get("year");
        int years = Integer.parseInt(year);
        map2.put("year",years);
        List<ShowRecord> lists = recordhutuMapper.showtotalyear(map2);
        return lists;
    }

}