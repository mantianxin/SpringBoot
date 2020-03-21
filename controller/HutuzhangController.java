package com.lzw.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.lzw.ssm.pojo.*;
import com.lzw.ssm.service.*;
import com.lzw.ssm.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.List;

/**
 * @author lizwl
 * @ClassName HutuzhangController
 * @create 2020-01-08 10:58
 * @desc
 * 一本糊涂账controller
 *  //消费记录展示  分页功能
 **/
@RestController
@RequestMapping(value = "/hutuzhang")
public class HutuzhangController {
    //当前用户名称
    String names;
    //当前用户头像图片名称
    String picname;
    public String getNames() {
        return names;
    }

    public void setNames(String name) {
        this.names = names;
    }

    public String getPicname() {
        return picname;
    }

    public void setPicname(String picname) {
        this.picname = picname;
    }

    @Autowired
    ConfigService configService;

    @Autowired
    CategoryhutuService categoryhutuService;

    @Autowired
    RecordtohutuService recordhutuService;

    @Autowired
    LoginUserService loginUserService;
    @Autowired
    SysUserService sysUserService;

    //跳转页面区域
    @RequestMapping(value = "/Echartsload")
    public ModelAndView loads(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("echartsdemo");
        return  mav;
    }
   //index跳转糊涂账首页
    @RequestMapping(value = "/hutubegin")
    public ModelAndView hutuzhang(){
        ModelAndView mav  = new ModelAndView();
        mav.setViewName("hutuzhang");
        return mav;
    }
    //配置页面 Config表
    @RequestMapping(value="/hutubegin/Config")
    public ModelAndView config(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Config");
        return  mav;
    }
    //添加Category 分类数据
    @RequestMapping(value = "/hutubegin/Category/add")
    public ModelAndView categoryadd(Category category){
        ModelAndView mav = new ModelAndView();
        categoryhutuService.addCategory(category);
        List<Category> cs = categoryhutuService.getCategorylist();
        mav.addObject("categorylist",cs);
        mav.setViewName("Category");
        return  mav;

    }
    //跳转Categoryadd界面
    @RequestMapping(value = "/hutubegin/Category/add/load")
    public ModelAndView Categoryload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("CategoryAdd");
        return mav;
    }
    //修改配置信息
    @RequestMapping(value = "/hutubegin/Category/update")
    public ModelAndView updateCategorys(Category category){
        ModelAndView mav = new ModelAndView();
        categoryhutuService.updateCategory(category);
        List<Category> cs = categoryhutuService.getCategorylist();
        mav.addObject("categorylist",cs);
        mav.setViewName("Category");
        return  mav;
    }
    //跳转Categoryupdate界面
    @RequestMapping(value = "/hutubegin/Category/update/load")
    public ModelAndView Categoryupdateload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("CategoryUpdate");
        return mav;
    }
    //添加Config数据
    @RequestMapping(value = "/hutubegin/Config/add")
    public ModelAndView configadd(Config config){
        ModelAndView mav = new ModelAndView();
        configService.addConfig(config);
        List<Config> configlist = configService.getConfigLists();
        if(configlist!=null){
            mav.addObject("config",configlist);
            mav.setViewName("hutuzhang");
        }else{
            mav.setViewName("index");
        }
        return mav;
    }
    @RequestMapping(value = "/hutubegin/Category")
    public ModelAndView Categorys(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("Category");
        return mav;
    }
    //跳转消费记录增加页面
    @RequestMapping(value = "/hutubegin/Record/addload")
    public ModelAndView addRecordload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("RecordAdd");
        return  mav;
    }
    //添加消费记录
    @RequestMapping(value = "/hutubegin/Record/load/add")
    public ModelAndView addRecord(Recordto record){
        ModelAndView mav = new ModelAndView();
        int i = recordhutuService.recordAdd(record);
        if (i==1) {
            System.out.println("数据新增成功！");
        }else {
            System.out.println("数据新增失败！");
        }
        List<Recordto> cs = recordhutuService.getRecordlist();
        mav.addObject("recordlist",cs);
        mav.setViewName("RecordList");
        return  mav;
    }
    @RequestMapping(value = "/hutubegin/Record/show/load")
    public ModelAndView RecordLoad(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("ShowEchartsAdminlte");//ShowEcharts
        return mav;
    }


    //跳转注册页面
    @RequestMapping(value = "/login/load")
    public ModelAndView loginload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginhutuzhangajaxtest");//loginhutuzhang
        return mav;
    }
    //跳转登录界面
    @RequestMapping(value="/login/loadbegin")
    public ModelAndView loginbegin(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("loginhutuzhang");
        return mav;
    }

    //登录功能正式
    //登录界面
    @RequestMapping(value = "/loginpage")//Uname  Upassword  RequestParam和input框name属性要一样
    public ModelAndView loginpage(@RequestParam("Uname") String Uname, @RequestParam("Upassword") String Upassword, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        LoginUser loginUser = loginUserService.loginuser(Uname,Upassword);
        if (loginUser == null) {
            mav.setViewName("loginhutuzhang");
        } else {
            mav.setViewName("hutuzhang");
        }
        return mav;
    }
    //测试功能
    @RequestMapping(value="/hutuzhangbegin/hutuecartstest")
    public ModelAndView ecartspage(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("ShowEchartsAdminlte");
        return  mav;
    }
    //登录成功
    @RequestMapping(value = "/index")
    public ModelAndView mianindex(){
        return RecordLoad();
    }
    //跳转注册界面
    @RequestMapping(value = "/load/regist")
    public ModelAndView registload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("general");
        return mav;
    }
    //注册界面
    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public ModelAndView regist(LoginUser loginUser) {
        ModelAndView mav = new ModelAndView();
        loginUserService.regist(loginUser);
        List<LoginUser> cs = loginUserService.getUserLists();//获取注册用户
        mav.addObject("userinfo", cs);
        mav.setViewName("showuser");
        return mav;
    }
    //消费记录展示
    @RequestMapping(value="/hutubegin/Record/recordlist")
    @ResponseBody
        public String recordlists(@RequestBody List<Map<String,String>> listMap) throws Exception{
        //ModelAndView mav = new ModelAndView();
        String jsonpage = listMap.get(0).get("page");
        String jsonsize = listMap.get(0).get("size");
         int page = Integer.parseInt(jsonpage);
        int size = Integer.parseInt(jsonsize);
        //修改实体为Recordto
        List<Recordto> recordlist = recordhutuService.recordlists(page,size);
        //pageinfo就是一个分页bean
        PageInfo<Recordto> pageInfo = new PageInfo<Recordto>(recordlist);
        return  JSON.toJSONString(pageInfo);
    }
    //跳转消费记录展示界面
    @RequestMapping(value = "/hutubegin/orderlist/load")
    public ModelAndView recordlistload(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("orderslist-JSONPAGE");
        return mav;
    }
    //////////////////////////////////////////////////////////////////////////////////////
    //跳轉賬戶界面传递用户名和图片名称参数
    @RequestMapping(value = "/huutzhangaccount")
    public ModelAndView hutuzhangaccount(HttpServletRequest request){
         ModelAndView mav =  new ModelAndView();
         String names= request.getParameter("name");
         String picnames = request.getParameter("picname");
         this.names = names;
         this.picname = picnames;
        mav.setViewName("hutuzhang--account");
        return mav;
    }
    @RequestMapping(value = "/huutzhangaccount/name")
    @ResponseBody
    public String hutuzhangaccountname(){
        Username user =  new Username(names,picname);
        String str = JSON.toJSONString(user);
        return str;
    }


    //跳转消费记录页面
    @RequestMapping(value = "/paypage")
    public ModelAndView payage(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String names= request.getParameter("name");
        String picnames = request.getParameter("picname");
        this.names = names;
        this.picname = picnames;
        mav.setViewName("ShowRecord");
        return mav;
    }
    @RequestMapping(value = "/paypage/name")
    @ResponseBody
    public String paypagename(){
        Username user =  new Username(names,picname);
        String str = JSON.toJSONString(user);
        return str;
    }
    //特定日期支出
    @ResponseBody
    @RequestMapping(value = "/AccountDaySpend")
    public String AccountDaySpend(String month){

        return "end";
    }
    //特定日期收入
    @ResponseBody
    @RequestMapping(value = "/AccountDayIncome")
    public String AccountDayIncome(String month){

        return "end";
    }
    //特定月份支出
    @ResponseBody
    @RequestMapping(value = "/AccountMonthSpend")
    public String AccountMonthSpend(String month){

        return "end";
    }
    //特定月份支出
    @ResponseBody
    @RequestMapping(value = "/AccountmonthIncome")
    public String AccountmonthIncome(String  month){

        return "end";
    }

    //特定年份支出,特定月份支出 从前端传到后端有关系的数据、从前端到后端无关系的数据
    //问题  ：  特定日、特定周
    //年、月  日  都行  因此前端传回后端可以有日这一条件
    //sql查询的日期格式是20200203这样的格式。
    @ResponseBody
    @RequestMapping(value = "/AccountYearIncome")
    public String AccountYearIncome(@RequestBody List<Map<String,String>> listMap ){
        //获取当天日期和是第几周，以及本周的开始日期和结束日期
        String month = listMap.get(0).get("month");
        String year = listMap.get(0).get("year");
        HashMap<String,Object> map=new HashMap<String,Object>();

        map.put("month", month);
        map.put("year",year);

        //月均花费，年份，月份
        List<ShowRecord> list = recordhutuService.showmonthtotal(map);

        //获取当天日期和是第几周，以及本周的开始日期和结束日期
        //获取一个Calendar对象
        Calendar calendar = Calendar.getInstance();
        int minDay = calendar.getActualMinimum(Calendar.DAY_OF_MONTH);
        int maxDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        //设置星期一为一周开始的第一天
        calendar.setFirstDayOfWeek(Calendar.MONDAY);
        //设置在一年中第一个星期所需最少天数
        calendar.setMinimalDaysInFirstWeek(4);
        //获得当前的年
        int weekYear = calendar.get(Calendar.YEAR);
        String weekYears = Integer.toString(weekYear);
        System.out.println("当前年："+weekYear);
        HashMap<String,String> map3 = new HashMap<>();
        map3.put("year",weekYears);

        List<ShowRecord> list3 = recordhutuService.showtotalyear(map3);
        //获得当前日期属于今年的第几周
        int weekOfYear = calendar.get(Calendar.WEEK_OF_YEAR);
        System.out.println("当前周："+weekOfYear);
        //格式化日期  当天
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        //设置显示日期格式 前台显示本周开始与结束日期
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("M月d日");
        //传到后台查询每周消费记录 需要更改日期格式
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");


        //获得指定年的第几周的开始日期（dayOfWeek是从周日开始排序的）
        calendar.setWeekDate(weekYear, weekOfYear, 2);
        //获得Calendar的时间
        Date starttime = calendar.getTime();
        //获得指定年的第几周的结束日期
        calendar.setWeekDate(weekYear, weekOfYear, 1);
        Date endtime = calendar.getTime();
        //本月开始时间
        calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), minDay, 00, 00, 00);
        System.out.println("当月的第一天：" + simpleDateFormat1.format(calendar.getTime()));
        String startmonth = simpleDateFormat1.format(calendar.getTime());
        //本月结束时间
        calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), maxDay, 23, 59, 59);
        System.out.println("当月的最后一天：" + simpleDateFormat1.format(calendar.getTime()));
        String endMonth = simpleDateFormat1.format(calendar.getTime());
        //将时间戳格式化为指定格式
        //本周开始日期
        String dateStart = simpleDateFormat1.format(starttime);
        //本周结束日期
        String dateEnd = simpleDateFormat1.format(endtime);
        //本周开始日期传至后台
        String datastartupload = simpleDateFormat2.format(starttime);
        //本周结束日期传至后台
        String dateendupload = simpleDateFormat2.format(endtime);
        HashMap<String,Object> map2 = new HashMap<>();
        map2.put("datastartupload",datastartupload);
        map2.put("dateendupload",dateendupload);
        List<ShowRecord> list2 = recordhutuService.showweektotal(map2);
        //本周结束日期传至后台
        //将开始结束日期，和今日日期加入集合中去
        Date t = new Date();
        String today = simpleDateFormat.format(t);
        HashMap<String,Object> map4=new HashMap<>();
        map4.put("date",today);
        map4.put("month",month);
        List<ShowRecord> list4 = recordhutuService.showdaytotal(map4);

        System.out.println("系统运行当前时间为："+simpleDateFormat.format(t));

        System.out.println("本周开始日期为：" + dateStart);
        System.out.println("本周结束日期为：" + dateEnd);


        HashMap<String,Object> map1=new HashMap<String,Object>();
        map1.put("day",today);
        //日消费，日期
        List<ShowRecord> list1 = recordhutuService.showdaytotal(map1);
      //把当前日期，本周开始时间，本周结束时间传进集合中，对集合进行赋值，然后全部传进list集合中
       list1.add(new ShowRecord(today,dateStart,dateEnd,startmonth,endMonth));
       list3.addAll(list4);
      list2.addAll(list3);
      list1.addAll(list2);
      list.addAll(list1);
        System.out.println("json数据为："+JSON.toJSONString(list));
        return JSON.toJSONString(list);
    }
    //特定年份支出
    @ResponseBody
    @RequestMapping(value = "/AccountYearPay")
    public String AccountYearPay(String year ){

        return "end";
    }

    //根据id删除数据   List<Map<String,String>> listMap
    @ResponseBody
    @RequestMapping(value="/hutubegin/Recordto/recordlist/delete")
    @PreAuthorize("hasPermission('/admin','d')")
    public String deleteid(@RequestBody List<Map<String,String>> listMap,HttpServletRequest request){
        String str = "{\"status\":\"false\",\"number\":\"0\"}";
        String jsonpage =" ";

        int i = listMap.size();
        for(int j = 0;j<i;j++){
            jsonpage = listMap.get(j).get("id");
            int a =Integer.parseInt(jsonpage);
            if(recordhutuService.deleteid(a)){

                //返回数据成功删除几个数据
                //返回删除几个数据  不是在页面头出现  而是作为一个漂浮的出现
                if(j==i-1){
                    String s = Integer.toString(i);
                    str = "{\"status\":\"true\",\"number\":\"s\"}";
                    this.payage(request);
                }
                continue;
            }else{
                System.out.println("删除数据出错");
                break;
            }
        }
        return str;
    }


    //根据多条件查询  ${pageContext.request.contextPath}/hutuzhang/hutubegin/Recordto/recordlist/select
    //未完成  虽然能够查到数据  但是不能持续显示  点击第几页是无法获得相应页数的数据 不能限定页面显示多少条数据 无法点击上一页 下一页  无法在查询过之后继续根据条件选择 从而无法获得数据
    //应该是逻辑问题  功能代码都已经实现 要修改一下逻辑  20200302 21:32 暂时停止 转而写ecarts图表  如下
    @ResponseBody
    @RequestMapping(value = "/hutubegin/Recordto/recordlist/select")
    public String selecttypes(@RequestBody List<Map<String,String>> listMap){
        String startdate = listMap.get(0).get("startdate");
        String enddate = listMap.get(0).get("enddate");
        String type = listMap.get(0).get("types");
        String page = listMap.get(0).get("page");
        String size = listMap.get(0).get("size");
        HashMap<String,String> map1=new HashMap<>();
        map1.put("startdate",startdate);
        map1.put("enddate",enddate);
        map1.put("type",type);
        map1.put("pages",page);
        map1.put("sizes",size);
        System.out.println("map1集合的值startdate为:"+map1.get("startdate"));
        System.out.println("map1集合的值enddate为:"+map1.get("enddate"));
        System.out.println("map1集合的值type为:"+map1.get("type"));
        //pageinfo就是一个分页bean
        List<Recordto> recordlist = recordhutuService.getRecordListtype(map1);
        PageInfo<Recordto> pageInfo = new PageInfo<>(recordlist);
        return JSON.toJSONString(pageInfo);
    }



    //ecarts图表显示  我们只显示收入  支出  还有资产组成图表
    //跳转账户图表页面
    @RequestMapping(value = "/ecarts/load")
    public ModelAndView ecarts(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String names= request.getParameter("name");
        String picnames = request.getParameter("picname");
        this.names = names;
        this.picname = picnames;
        mav.setViewName("hutuzhangecharts");
        return mav;
    }
    @RequestMapping(value = "/ecarts/load/name")
    public String ecartsname(){
        Username user =  new Username(names,picname);
        String str = JSON.toJSONString(user);
        return str;
    }

    //Echarts柱状图消费一览  年度月消费
    @RequestMapping(value = "/hutubegin/Record/show/showmonthtotal",method = RequestMethod.GET)
    @ResponseBody
    public String ShowRecordTotal(HttpServletRequest request, HttpServletResponse response){
        List<ShowRecord> list = recordhutuService.showtotalmonth();
        //转化为json数据
        return JSON.toJSONString(list);
    }

    //从hutuzhang.jsp到达个人中心页面personle.jsp
    @RequestMapping(value = "/names")
    public ModelAndView ajaxupload(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        String names= request.getParameter("name");
        String picnames = request.getParameter("picname");
        this.names = names;
        this.picname = picnames;
        mav.setViewName("personle");
        return mav;
    }
    //个人中心页面发送ajax请求，此函数是向前端页面传值
    @RequestMapping(value = "/names/value")
    @ResponseBody
    public String namesvalue(){
      Username user =  new Username(names,picname);
      String str = JSON.toJSONString(user);
      return str;
    }
    //从hutuzhang.jsp到达个人中心页面ShowRecord.jsp  必须在跳转的语句中都要加上url?name=用户名&&picname=图片名


    //上传头像图片
    @RequestMapping("/fileUpload")
    @ResponseBody
    public ModelAndView fileUpload(@RequestParam("fileName") MultipartFile file){

        if(file.isEmpty()){
            return failure();
        }
        String fileName = file.getOriginalFilename();
        int size = (int) file.getSize();
        System.out.println("文件名称"+fileName + "-->" + size);

        if(sysUserService.updatepicname(fileName,names)){
            System.out.println("修改文件名成功");
        }
        String path = "C:\\Users\\lizwl\\Desktop\\代码生成工具\\SpringBoot模板百度云代码\\SpringBoot基础\\代码\\springboot_mybatis\\src\\main\\webapp\\image" ;
        File dest = new File(path + "/" + fileName);
        if(!dest.getParentFile().exists()){ //判断文件父目录是否存在
            dest.getParentFile().mkdir();
        }
        try {
            file.transferTo(dest); //保存文件
            return hutuzhangjsp();
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return failure();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return failure();
        }
    }
    @RequestMapping(value = "/hutuzhangjsp")
    public ModelAndView hutuzhangjsp(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("hutuzhang");
        return mav;
    }
    @RequestMapping(value = "/faile")
    public ModelAndView failure(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("failer");
        return mav;
    }
    //在完成hutuzhang跳转之后
}