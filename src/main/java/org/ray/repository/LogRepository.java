package org.ray.repository;

import org.ray.entity.Log;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * 系统日志Repository接口
 * @author ray
 *
 */
public interface LogRepository extends JpaRepository<Log, Integer>,JpaSpecificationExecutor<Log>{

	
}
