package com.ducks.demys.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ducks.demys.boot.service.NotificationService;
import com.ducks.demys.boot.vo.Notification;

@Controller
public class NotificationController {

	private NotificationService notificationService;
	
	public NotificationController(NotificationService notificationService) {
		this.notificationService = notificationService;
	}
	
	@RequestMapping("/common/mainhead")
	public String showList(@RequestParam(required = false) Integer DELSTATUS, Model model) {
	    int delStatus = DELSTATUS != null ? DELSTATUS : 0;
	    List<Notification> notifications = notificationService.getNotificationList(delStatus);
	    ModelAndView modelAndView = new ModelAndView("notificationList");
	    modelAndView.addObject("notifications", notifications);
	    return "common/mainhead";
	}

}
