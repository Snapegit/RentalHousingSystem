package com.cl.dao;

import com.cl.entity.YuyuekanfangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.YuyuekanfangView;


/**
 * 预约看房
 * 
 * @author 
 * @email 
 * @date 2024-01-07 10:16:46
 */
public interface YuyuekanfangDao extends BaseMapper<YuyuekanfangEntity> {
	
	List<YuyuekanfangView> selectListView(@Param("ew") Wrapper<YuyuekanfangEntity> wrapper);

	List<YuyuekanfangView> selectListView(Pagination page,@Param("ew") Wrapper<YuyuekanfangEntity> wrapper);
	
	YuyuekanfangView selectView(@Param("ew") Wrapper<YuyuekanfangEntity> wrapper);
	

}
