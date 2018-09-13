package co.grandcircus.assessmentFinal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class StudentController {
	
		
		@Autowired
		private StudentDao studentdao;
		
		@RequestMapping("/")
		public ModelAndView showHome() {
			return new ModelAndView("index");
		}

		@RequestMapping("/name")
		public ModelAndView showByName(@RequestParam("name") String name) {
			List<Student> students = studentdao.findByName(name);
			
			ModelAndView mav = new ModelAndView("students-list");
			mav.addObject("students", students);
			return mav;
		}
		
		@RequestMapping("/major")
		public ModelAndView showByMajor(@RequestParam("major") String major) {
			List<Student> students = studentdao.findByMajor(major);
			
			ModelAndView mav = new ModelAndView("students-list");
			mav.addObject("students", students);
			return mav;
		}
		
	}


