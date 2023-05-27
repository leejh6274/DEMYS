package com.ducks.demys.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ducks.demys.boot.service.BudgetService;
import com.ducks.demys.boot.vo.Budget;
import com.ducks.demys.boot.vo.Pjct;
import com.ducks.demys.boot.vo.Projects;

@Controller
public class BudgetController {
   BudgetService budgetService;
   public BudgetController(BudgetService budgetService) {
      this.budgetService = budgetService;
   }
   
   @RequestMapping("budget/budget_go")
   public String showBudgetMain(Model model, int PJ_NUM) {
      Budget budget = budgetService.getBudgetByPJ_NUM(PJ_NUM);
      
      
      model.addAttribute("budget",budget);
      return "budget/list";
   }
   

   @RequestMapping("budget/list")
   public void showBudgetList() {
      
   }
   @RequestMapping("budget/detail")
   public void showBudgetDetail() {
      
   }
   @RequestMapping("budget/regist")
   public void showBudgetRegist() {
      
   }
}