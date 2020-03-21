package com.lzw.ssm.service;

import com.lzw.ssm.mapper.CommodityMapper;
import com.lzw.ssm.pojo.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.misc.BASE64Decoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

/**
 * @author lizwl
 * @ClassName ImageService
 * @create 2019-10-16 21:06
 * @desc
 **/
@Service
public class ImageService {
    @Autowired
    CommodityMapper commodityMapper;

    public String addImage(Image testPo){
        commodityMapper.insertImage(testPo);
        return "ok";
    }

    public String getImage(Integer id, HttpServletResponse response){
        try {
            Image testPo = commodityMapper.selectImageById(id);
            byte[] image = (byte[])testPo.getImage();
            String value = new String(image,"UTF-8");
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] bytes = decoder.decodeBuffer(value);
            for(int i=0;i<bytes.length;i++){
                if(bytes[i]<0){
                    bytes[i]+=256;
                }
            }
            response.setContentType("static/image/jpeg");
            ServletOutputStream out = response.getOutputStream();
            out.write(bytes);
            out.flush();
            out.close();
        }catch (Exception e){
            e.printStackTrace();
        }

        return "ok";
    }
}