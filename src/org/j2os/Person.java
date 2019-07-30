package org.j2os;

import net.sf.oval.constraint.NotEmpty;
import net.sf.oval.constraint.NotNull;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by m on 10/25/2017.
 */
@Entity(name = "person")
@Table(name = "person")
public class Person implements Serializable{
    @Id
    @SequenceGenerator(name = "seq", allocationSize = 1,initialValue = 1, sequenceName = "seq")
    @GeneratedValue(strategy = GenerationType.AUTO ,generator = "seq")
    @Column(columnDefinition = "NVARCHAR2(20)" ,name ="id")
    private  Long id;

    @Column(columnDefinition = "NVARCHAR2(30)" ,name ="name")
    @NotEmpty(errorCode = " The name is empty ")
    private String name;

    @Column(columnDefinition = "NVARCHAR2(40)" , name = "family")
    @NotEmpty(errorCode = " The family is empty ")
    private String family;

    @Column(columnDefinition = "NVARCHAR2(50)" , name = "Email")
    @net.sf.oval.constraint.Email (errorCode = " The email address is incorrect ")
    private String Email;

    @Column(columnDefinition = "NVARCHAR2(20)" , name = "personal_number")
    @NotEmpty(errorCode = " The personal number is empty ")
    private String personal_number;

    @Column(columnDefinition = "NVARCHAR2(50)" , name = "national_id")
    @NotEmpty(errorCode = " The national number is empty ")
    private String national_id;

    @Column(columnDefinition = "NVARCHAR2(50)" , name = "phone_number")
    private Long phone_number;


    @OneToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    private Salary salary;

    @Column(columnDefinition = "NVARCHAR2(20)" , name = "roleId")
    @NotEmpty(errorCode = " The roleId is empty ")
    private Long roleId;

    @Column(columnDefinition = "NVARCHAR2(50)" , name = "req")
    private String req;

    @Column(columnDefinition = "NVARCHAR2(20)" , name = "accId")
    private Long accId;

    @Column(columnDefinition = "NVARCHAR2(50)" , name = "month")
    @NotNull(errorCode = " The month is empty ")
    private String month;

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public Long getAccId() {
        return accId;
    }

    public void setAccId(Long accId) {
        this.accId = accId;
    }

    public String getReq() {
        return req;
    }

    public void setReq(String req) {
        this.req = req;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Salary getSalary() {
        return salary;
    }

    public void setSalary(Salary salary) {
        this.salary = salary;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFamily() {
        return family;
    }

    public void setFamily(String family) {
        this.family = family;
    }
    @PrimaryKeyJoinColumn(referencedColumnName = "personal_number" ,name = "personal_number")

    public String getPersonal_number() {
        return personal_number;
    }

    public void setPersonal_number(String personal_number) {
        this.personal_number = personal_number;
    }

    public String getNational_id() {
        return national_id;
    }

    public void setNational_id(String national_id) {
        this.national_id = national_id;
    }

    public Long getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(Long phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }


}
