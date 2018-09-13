package co.grandcircus.assessmentFinal;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

@Repository
	@Transactional
	public class StudentDao {
		
		@PersistenceContext
		private EntityManager em;
		
		public List<Student> findAll() {
					return em.createQuery("FROM Student", Student.class).getResultList();
			
		}
		
		public Student findByID(Long id) {
			return em.find(Student.class, id);
		}
		
		public List<Student> findByMajor(String major) {
			return em.createQuery("FROM Student WHERE major = :major", Student.class)
					.setParameter("major", major)
					.getResultList();
		}
		
		public List<Student> findByName(String name) {
			return em.createQuery("FROM Student WHERE name LIKE :name", Student.class)
					.setParameter("name", "%" + name + "%")
					.getResultList();
		}
		
		public void create(Student student) {
			em.persist(student);
		}
		
		public void delete(Long id) {
			Student student = em.getReference(Student.class, id);
			em.remove(student);
		}
		
		public void update(Student student) {
			em.merge(student);
			
		}

	}

}
