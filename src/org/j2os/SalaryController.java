package org.j2os;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by m on 10/25/2017.
 */
@Controller("salaryController")
@RequestMapping("salary")
public class SalaryController {
    @Autowired
    private SalaryService salaryService;
    @RequestMapping("show.do")
    public String select(HttpServletRequest request, HttpServletResponse response){

        request.setAttribute("select",salaryService.select());
        return "index";
    }


    @RequestMapping("update.do")
    public String update(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Salary salary){
        salaryService.update(salary);
        return "redirect:/show.do";
    }


    @RequestMapping("remove.do")
    public String remove(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Salary salary){
        salaryService.remove(salary);
        return "redirect:/show.do";
    }



}
