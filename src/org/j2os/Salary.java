package org.j2os;

import net.sf.oval.constraint.NotEmpty;
import net.sf.oval.constraint.NotNull;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by m on 10/25/2017.
 */
@Table(name = "SALARY")
@Entity(name = "salary")
public class Salary implements Serializable{
    @Id
    @SequenceGenerator(name = "sequence", allocationSize = 1,initialValue = 1 ,sequenceName = "sequence")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "sequence")
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="id")
    private  Long id;
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="basic_salary")
    @NotEmpty(errorCode = "The basic salary is empty")
    private Long basic_salary;
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="bonus")
    private Long bonus;
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="Loan")
    private Long Loan;
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="over_time")
    private Long over_time;

    @Column(columnDefinition = "NVARCHAR2(20)" , name = "personal_number")
    @NotEmpty(errorCode = " The personal number is empty ")
    private Long personal_number;


    public Long getPersonal_number() {
        return personal_number;
    }

    public void setPersonal_number(Long personal_number) {
        this.personal_number = personal_number;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(Long basic_salary) {
        this.basic_salary = basic_salary;
    }

    public Long getBonus() {
        return bonus;
    }

    public void setBonus(Long bonus) {
        this.bonus = bonus;
    }

    public Long getLoan() {
        return Loan;
    }

    public void setLoan(Long loan) {
        Loan = loan;
    }

    public Long getOver_time() {
        return over_time;
    }

    public void setOver_time(Long over_time) {
        this.over_time = over_time;
    }


}
