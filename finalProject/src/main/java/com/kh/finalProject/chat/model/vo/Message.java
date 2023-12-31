package com.kh.finalProject.chat.model.vo;
import lombok.Data;
import java.sql.Timestamp;

@Data
public class Message {
	
    private int msgNo;
	private String msgCo;
	private Timestamp createDate;
	private int senderNo;
	private int receiverNo;
}
