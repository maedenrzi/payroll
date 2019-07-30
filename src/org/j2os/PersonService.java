package org.j2os;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Objects;

/**
 * Created by m on 10/25/2017.
 */
@Service
@Transactional
public class PersonService {


    @PersistenceContext
    private EntityManager entityManager;


    public void register(Person person){
        entityManager.persist(person);

    }

    public List<Person> selectSearch(Long roleId,String month,String personal_number){
        return entityManager.createQuery("select entity from person entity where entity.roleId=:roleId and entity.month=:month and entity.personal_number=:personal_number")
                .setParameter("roleId",roleId)
                .setParameter("month",month)
                .setParameter("personal_number",personal_number)
                .getResultList();
    }


    public List<Person> select(Long roleId,String month){
        return entityManager.createQuery("select entity from person entity where entity.roleId=:roleId and entity.month=:month")
                .setParameter("roleId",roleId)
                .setParameter("month",month)
                .getResultList();
    }

    public List<Person> selectreq(Long roleId,String month,Long accId){

        return entityManager.createQuery("select o from person o where o.roleId=:roleId and o.month=:month and o.accId=:accId")
                .setParameter("roleId",roleId)
                .setParameter("month",month)
                .setParameter("accId",accId)
                .getResultList();
    }


    public void update(Person person){
        entityManager.merge(person);
    }



    public void remove(Person person){
        person=entityManager.merge(person);
        entityManager.remove(person);
    }

    public boolean login(String personal_number,String national_id){
        try {
            System.out.println(personal_number);
            System.out.println(national_id);
            Person person = (Person) entityManager.createQuery("select entity from person entity where entity.personal_number=:personal_number and entity.national_id=:national_id")
                    .setParameter("personal_number", personal_number)
                    .setParameter("national_id",national_id)
                    .getSingleResult();

            return true;

        } catch (Exception e) {

            return false;
        }
    }

    public boolean Admin(String personal_number,String national_id){

            System.out.println(personal_number);
            System.out.println(national_id);
            Person person = (Person) entityManager.createQuery("select entity from person entity where entity.personal_number=:personal_number and entity.national_id=:national_id")
                    .setParameter("personal_number", personal_number)
                    .setParameter("national_id",national_id)
                    .getSingleResult();

            if(person.getRoleId()== 2)
                return true;
            else
                return false;


    }

    public boolean GeneralAdminLogin(String personal_number,String national_id) {


            Person person = (Person) entityManager.createQuery("select entity from person entity where entity.personal_number=:personal_number and entity.national_id=:national_id")
                    .setParameter("personal_number", personal_number)
                    .setParameter("national_id", national_id)
                    .getSingleResult();

        if (person.getRoleId() == 1)
            return true;
        else
            return false;


    }

    public Person user(String personal_number,String national_id,String month){

        return (Person) entityManager.createQuery("select entity from person entity where entity.personal_number=:personal_number and entity.national_id=:national_id and entity.month=:month")
                .setParameter("personal_number", personal_number)
                .setParameter("national_id",national_id)
                .setParameter("month",month)
                .getSingleResult();
    }

    public Person userReq(String personal_number,String national_id){

        return (Person) entityManager.createQuery("select entity from person entity where entity.personal_number=:personal_number and entity.national_id=:national_id")
                .setParameter("personal_number", personal_number)
                .setParameter("national_id",national_id)

                .getSingleResult();
    }

    public Person findUser(long id){

        return (Person) entityManager.createQuery("select o from person o where o.id=:x").setParameter("x",id).getSingleResult();

    }


}
