package controller;

import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.*;

@Controller
@SessionAttributes("User")
public class UserController {

    //@Autowired
    public UserService UserService;

    @RequestMapping(value="/signup", method=RequestMethod.GET)
    public String signup(Model model) {
        User User = new User();
        model.addAttribute("User", User);
        return "signup";
    }

    @RequestMapping(value="/signup", method=RequestMethod.POST)
    public String signup(@ModelAttribute("User") User User, Model model) {
        if(UserService.getUserByUserName(User.getUserName())) {
            model.addAttribute("message", "User Name exists. Try another user name");
            return "signup";
        } else {
            UserService.insertUser(User);
            model.addAttribute("message", "Saved User details");
            return "redirect:login.html";
        }
    }

    @RequestMapping(value="/login", method=RequestMethod.GET)
    public String login(Model model) {
        UserLogin UserLogin = new UserLogin();
        model.addAttribute("UserLogin", UserLogin);
        return "login";
    }

    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String login(@ModelAttribute("UserLogin") UserLogin UserLogin) {
        boolean found = UserService.getUserByLogin(UserLogin.getUserName(), UserLogin.getPassword());
        if (found) {
            return "success";
        } else {
            return "failure";
        }
    }
}