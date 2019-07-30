package org.j2os;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by m on 10/25/2017.
 */
@Service
@Transactional
public class SalaryService {
    @PersistenceContext
    private EntityManager entityManager;

    public void register(Salary salary){
        salary.setOver_time(salary.getOver_time()*((salary.getBasic_salary()/30)/8)*14/10);
        Long insurance_money=(salary.getBasic_salary()*7/100);
        Long basic_salary= salary.getBasic_salary();
        Long toll=0l;
        if(basic_salary>20000000){
            toll=((basic_salary+salary.getOver_time()-insurance_money-20000000)/10);
        }
//        salary.setMain_salary(salary.getBasic_salary()+salary.getOver_time()+salary.getBonus()-insurance_money-toll-salary.getFine());
        entityManager.persist(salary);

    }

    public List<Salary> select(){
        return entityManager.createQuery("select o from salary o").getResultList();
    }

    public void update(Salary salary){
        entityManager.merge(salary);
    }

    public void remove(Salary salary){
        salary=entityManager.merge(salary);
        entityManager.remove(salary);
    }

    public Salary user_salary(Person person2){

        return (Salary) entityManager.createQuery("select entity from salary entity where entity.personal_number=:personal_number")
                .setParameter("personal_number", person2.getPersonal_number())
                .getSingleResult();
    }
}
