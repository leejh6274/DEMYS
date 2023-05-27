package com.ducks.demys.boot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ducks.demys.boot.repository.NotificationRepository;
import com.ducks.demys.boot.vo.Notification;

@Service
public class NotificationService {
	
	private NotificationRepository notificationRepository;
	
	public NotificationService(NotificationRepository notificationRepository) {
		this.notificationRepository= notificationRepository;
	}
	
	public List<Notification> getNotificationList(int DELSTATUS) {
		return notificationRepository.getNotificationList(0);
	}
	
	public int getNotificationCount() {
		return notificationRepository.getNotificationCount();
		
	}
	
	public void removeNotification(int NOTI_NUM) {
		notificationRepository.removeNotification(NOTI_NUM);
	}
}