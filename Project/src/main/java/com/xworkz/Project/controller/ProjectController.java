package com.xworkz.Project.controller;

import com.xworkz.Project.entity.AdminEntity;
import com.xworkz.Project.entity.DishesEntity;
import com.xworkz.Project.entity.RegisterEntity;
import com.xworkz.Project.repo.ProjectRepo;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
@AllArgsConstructor
public class ProjectController {

    ProjectRepo repo;

    @GetMapping("home")
    public String homePage() {
        System.out.println("SOP: ProjectController.homePage() - Loading home page");
        return "index";
    }

    @GetMapping("redirectToRegister")
    public String redirectToRegister() {
        System.out.println("SOP: ProjectController.redirectToRegister() - Redirecting to register page");
        return "register";
    }

    @GetMapping("redirectToAdminLogin")
    public String redirectToAdminLogin() {
        System.out.println("SOP: ProjectController.redirectToAdminLogin() - Redirecting to admin login");
        return "adminLogin";
    }

    @GetMapping("redirectToUserLogin")
    public String redirectToUserLogin() {
        System.out.println("SOP: ProjectController.redirectToUserLogin() - Redirecting to user login");
        return "userLogin";
    }

    @PostMapping("register")
    public String saveUser(RegisterEntity entity) {
        System.out.println("SOP: ProjectController.saveUser() - Started with entity: " + entity);
        try {
            repo.saveUser(entity);
            System.out.println("SOP: ProjectController.saveUser() - User registration successful");
            return "index";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.saveUser() - Error during registration: " + e.getMessage());
            return "register";
        }
    }

    @PostMapping("adminLogin")
    public String adminLogin(@RequestParam("email") String email, @RequestParam("psw") String psw, Model model) {
        System.out.println("SOP: ProjectController.adminLogin() - Started with email: " + email);
        try {
            boolean isCheck = repo.checkEmail(email, psw);
            if (isCheck) {
                AdminEntity entity = repo.getByEmail(email);
                model.addAttribute("email", entity.getEmail());
                model.addAttribute("adminName", entity.getName());
                System.out.println("SOP: ProjectController.adminLogin() - Admin login successful");
                return "adminDashBord";
            }
            System.out.println("SOP: ProjectController.adminLogin() - Admin login failed");
            return "adminLogin";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.adminLogin() - Error during admin login: " + e.getMessage());
            return "adminLogin";
        }
    }

    @PostMapping("userLogin")
    public String userLogin(@RequestParam("email") String email, @RequestParam("psw") String psw, Model model) {
        System.out.println("SOP: ProjectController.userLogin() - Started with email: " + email);
        try {
            boolean isCheck = repo.checkUserEmail(email, psw);
            if (isCheck) {
                RegisterEntity entity = repo.getByUser(email);
                model.addAttribute("email", entity.getEmail());
                String name = entity.getFirstName() + " " + entity.getSecondName();
                model.addAttribute("userName", name);
                System.out.println("SOP: ProjectController.userLogin() - User login successful");
                return "userDashBord";
            }
            System.out.println("SOP: ProjectController.userLogin() - User login failed");
            return "userLogin";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.userLogin() - Error during user login: " + e.getMessage());
            return "userLogin";
        }
    }

    @GetMapping("logout")
    public String logOut() {
        System.out.println("SOP: ProjectController.logOut() - User logged out");
        return "index";
    }

    @GetMapping("redirectToUser")
    public String redirectToUser(Model model) {
        System.out.println("SOP: ProjectController.redirectToUser() - Loading user details");
        try {
            List<RegisterEntity> entityList = repo.getAll();
            model.addAttribute("entityList", entityList);
            System.out.println("SOP: ProjectController.redirectToUser() - Loaded " + entityList.size() + " users");
            return "userDetails";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.redirectToUser() - Error loading user details: " + e.getMessage());
            return "adminDashBord";
        }
    }

    @GetMapping("redirectToAddDishes")
    public String redirectToAddDishes() {
        System.out.println("SOP: ProjectController.redirectToAddDishes() - Loading add dishes page");
        return "addDishes";
    }

    @PostMapping("addDish")
    public String addDish( DishesEntity dish, Model model) {

        dish.setAvailable(true);
        repo.save(dish);
        System.out.println("------"+dish);
        model.addAttribute("successMessage", "Dish added successfully!");
        return "addDishes";

    }


    @GetMapping("redirectToViewDishes")
    public String redirectToViewDishes(Model model) {
        System.out.println("SOP: ProjectController.redirectToViewDishes() - Loading dishes list");
        try {
            List<DishesEntity> dishesList = repo.getDishes();
            model.addAttribute("dishesList", dishesList);
            System.out.println("SOP: ProjectController.redirectToViewDishes() - Loaded " + dishesList.size() + " dishes");
            return "viewDishes";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.redirectToViewDishes() - Error loading dishes: " + e.getMessage());
            model.addAttribute("errorMessage", "Error loading dishes. Please try again.");
            return "viewDishes";
        }
    }

    @GetMapping("redirectToMenuItems")
    public String redirectToMenuItems(Model model) {
        System.out.println("SOP: ProjectController.redirectToMenuItems() - Loading menu items");
        try {
            List<DishesEntity> dishesList = repo.getDishes();
            model.addAttribute("dishesList", dishesList);
            System.out.println("SOP: ProjectController.redirectToMenuItems() - Loaded " + dishesList.size() + " dishes");
            return "menuItems";
        } catch (Exception e) {
            System.out.println("SOP: ProjectController.redirectToMenuItems() - Error loading dishes: " + e.getMessage());
            model.addAttribute("errorMessage", "Error loading menu items. Please try again.");
            return "menuItems";
        }
    }

}