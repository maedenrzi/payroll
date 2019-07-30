package org.j2os;

import net.sf.oval.ConstraintViolation;
import net.sf.oval.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by m on 10/25/2017.
 */

@Controller("personController")
@RequestMapping("person")
public class PersonController{
    @Autowired
    private Validator validator;
    @Autowired
    private PersonService personService;
    @Autowired
    private SalaryService salaryService;


    @RequestMapping("register.do")
    public String register(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary) throws Throwable{
        person.setSalary(salary);

        List<ConstraintViolation> constrains = validator.validate(person);
        if (constrains.isEmpty()){
            personService.register(person);
            return "redirect:/Add_User.jsp";
        }else {
            request.setAttribute("error",constrains);
            return "/error.jsp";
        }
    }




    @RequestMapping("update.do")
    public String update(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary){
//        salaryService.update(salary);
       // String month = request.getParameter("month");
       // System.out.println(month+"update1");
      //  request.getSession().setAttribute("month",month);
       // System.out.println(month+"update2");
        person.setSalary(salary);
        personService.update(person);
        return "redirect:/person/showUpdate.do";
    }

    @RequestMapping("update_profile.do")
    public String update_profile(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary){
        person.setSalary(salary);
        personService.update(person);
        return "redirect:/person/showUpdate_profile.do";
    }


    @RequestMapping("remove.do")
    public String remove(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary) {
        personService.remove(person);
        salaryService.remove(salary);
        return "redirect:/person/showUpdate.do";
    }


    @RequestMapping("remove_profile.do")
    public String remove_update(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary) {
        personService.remove(person);
        salaryService.remove(salary);
        return "redirect:/person/showUpdate_profile.do";
    }


    @RequestMapping("login.do")
    public String logIn(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String userName = request.getParameter("personal_number");
        System.out.println(userName);
        String password = request.getParameter("national_id");
        System.out.println(password);
        if(userName == null || userName.equals("") || password == null || password.equals("")){
            return "redirect:/first.jsp";
        }
        else {

            boolean Exist = personService.login(userName,password);
            if(!Exist)
                return "redirect:/first.jsp";
            else {
                boolean Generaladmin = true;
                Generaladmin = personService.GeneralAdminLogin(userName,password);
                if (Generaladmin)
                    return "redirect:/General_Admin.jsp";
                else {
                    boolean admin=true;
                    admin=personService.Admin(userName,password);
                    if(admin)
                        return "redirect:/Admin.jsp";
                    else
                        return "/person/name.do";
                     }
                 }
        }
    }

    @RequestMapping("name.do")
    public String name(HttpServletRequest request, HttpServletResponse response){
        String userName = request.getParameter("personal_number");
        String password = request.getParameter("national_id");

        System.out.println(password);
        request.getSession().setAttribute("username",userName);
        request.getSession().setAttribute("password",password);
        return "redirect:/month.jsp";
    }

    @RequestMapping("condition.do")
    public String condition(HttpServletRequest request, HttpServletResponse response,@ModelAttribute Person person, @ModelAttribute Salary salary){
        String userName = request.getParameter("personal_number");
        System.out.println(userName);
        String password = request.getParameter("national_id");
       // System.out.println(person.getAccId());
       // String month = request.getParameter("month");
        request.setAttribute("show",personService.userReq(userName,password));
        return "/condition.jsp";
    }




    @RequestMapping("user_info.do")
    public String show(HttpServletRequest request, HttpServletResponse response){
        String userName = request.getParameter("personal_number");
        System.out.println(userName);
        String password = request.getParameter("national_id");
        String month = request.getParameter("month");
        request.setAttribute("show",personService.user(userName,password,month));
        return "/userInfo.jsp";
    }

    @RequestMapping("req.do")
    public String req (HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary){
        person.setSalary(salary);
        //age karbar req bde acc ro 4 mikonad
        long acc= 4;
        person.setAccId(acc);
        personService.update(person);
        return "redirect:/success.jsp";
       // String req = request.getParameter("req");
       /* long roleid=3;
        List<Person> person1 = personService.select(roleid);
        request.setAttribute("select",person1);*/
      //  personService.setreq(person);
       // List<Person> persons = personService.showreq(req);
       // request.setAttribute("selectreq",persons);
    }

    @RequestMapping("showSearch.do")
    public String showSearch(HttpServletRequest request, HttpServletResponse response) {

        String month = (String) request.getSession().getAttribute("month");
        String num = request.getParameter("personal_number");
        // request.getSession().setAttribute("month",month);

        //System.out.println(month);
        long roleid=3;
        List<Person> person = personService.selectSearch(roleid,month,num);
        request.setAttribute("select",person);

        return "/users.jsp";
    }

    @RequestMapping("showSearch_profile.do")
    public String showSearch_profile(HttpServletRequest request, HttpServletResponse response) {

        String month = (String) request.getSession().getAttribute("month");
        String num = request.getParameter("personal_number");
        // request.getSession().setAttribute("month",month);

        //System.out.println(month);
        long roleid=3;
        List<Person> person = personService.selectSearch(roleid,month,num);
        request.setAttribute("select_profile",person);

        return "/users_profile.jsp";
    }

    @RequestMapping("showUpdate.do")
    public String showUpdate(HttpServletRequest request, HttpServletResponse response) {

        String month = (String) request.getSession().getAttribute("month");
       // System.out.println(month+"showUpdate");

        long roleid=3;
        List<Person> person = personService.select(roleid,month);
        request.setAttribute("select",person);

        return "/users.jsp";
    }

    @RequestMapping("showUpdate_profile.do")
    public String showUpdate_profile(HttpServletRequest request, HttpServletResponse response) {

        String month = (String) request.getSession().getAttribute("month");
        // System.out.println(month+"showUpdate");

        long roleid=3;
        List<Person> person = personService.select(roleid,month);
        request.setAttribute("select_profile",person);

        return "/users_profile.jsp";
    }


    @RequestMapping("show.do")
    public String select(HttpServletRequest request, HttpServletResponse response) {
        String month = request.getParameter("month");
        request.getSession().setAttribute("month",month);

        //System.out.println(month);
        long roleid=3;
        List<Person> person = personService.select(roleid,month);
        request.setAttribute("select",person);

        return "/users.jsp";
    }

    @RequestMapping("show_profile.do")
    public String select_profile(HttpServletRequest request, HttpServletResponse response) {
        String month = request.getParameter("month");
        request.getSession().setAttribute("month",month);
        //System.out.println(month);
        long roleid=3;
        List<Person> person = personService.select(roleid,month);
        request.setAttribute("select_profile",person);
        return "/users_profile.jsp";
    }

    @RequestMapping("showReq.do")
    public String selectreq(HttpServletRequest request, HttpServletResponse response) {
        //faqat acc haye 4 ke na accept shodn na reject ro namayesh mide
        long roleid=3;
        long accId= 4;
        String month = request.getParameter("month");
        //System.out.println(month+"showReq");
        List<Person> person = personService.selectreq(roleid,month,accId);
        request.setAttribute("selectReq",person);
        return "/req.jsp";
    }


    @RequestMapping("showAccept.do")
    public String showAccept(HttpServletRequest request, HttpServletResponse response) {

        String month = (String) request.getSession().getAttribute("month");
        // System.out.println(month+"showUpdate");
        long accId=4;
        long roleid=3;
        List<Person> person = personService.selectreq(roleid,month,accId);
        request.setAttribute("selectReq",person);

        return "/req.jsp";
    }


    @RequestMapping("accept.do")
    public String accept (HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary){
//        salaryService.update(salary);
        //accept acc ro 1 mikonad
         long accId= 1;
         person.setAccId(accId);
        //System.out.println(person.getAccId());
        String month = request.getParameter("month");
        // System.out.println(month+"update1");
        request.getSession().setAttribute("month",month);
        System.out.println(month+"accept");
        person.setSalary(salary);
        personService.update(person);
        return "redirect:/person/showAccept.do";
    }

    @RequestMapping("reject.do")
    public String reject(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Person person, @ModelAttribute Salary salary) {
       //reject acc ra 2 mikonad
       // long acc=2;
       // person.setAccId(acc);
        long accId= 2;
        person.setAccId(accId);
        String month = request.getParameter("month");
        // System.out.println(month+"update1");
        System.out.println(month+"reject");
        request.getSession().setAttribute("month",month);
        System.out.println(month+"reject");
        person.setSalary(salary);
        personService.update(person);
        return "redirect:/person/showAccept.do";
    }
}
