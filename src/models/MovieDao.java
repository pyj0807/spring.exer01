package models;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDao {
/*
	public List<Integer> getShowtimes(String title) {
		List<Integer> list = new ArrayList<>();
		switch(title) {
		case "안시성":
			list.add(8);	list.add(12);	list.add(16); 	list.add(20);
			break;
		case "명당":
			list.add(7);	list.add(9);	list.add(11); 	list.add(13);
			break;
		case "서치" :
			list.add(15);	list.add(18);	list.add(21); 	
			break;
		default :
			list.add(9);	list.add(12);	list.add(15);	list.add(18);	list.add(21);
		}
		return list;
	}
	*/
	@Autowired
	SqlSessionFactory factory;
	
	@Autowired
	SqlSessionTemplate template;
	
	public List<Map> getMovieTime(String m){
		SqlSession sql =factory.openSession();	
		try {
			List<Map> p = sql.selectList("movie.getMovieTime",m);
			return p;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
}
