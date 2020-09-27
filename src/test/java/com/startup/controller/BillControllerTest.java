package com.startup.controller;

import com.startup.entity.Account;
import com.startup.entity.Bill;
import com.startup.factory.BillFactory;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;

import javax.swing.text.html.parser.Entity;

import static org.junit.Assert.*;
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@RunWith(SpringRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BillControllerTest {

    public static Bill bill = BillFactory.generateBill("120456", "54778888", "1500");
    @Autowired
    private TestRestTemplate restTemplate;
    private String baseURL = "http://localhost:8080/bill/";

    @Test
    public void a_create() {
        String url = baseURL + "create";
        System.out.println("URL" + url);
        System.out.println("POST data: " + bill);
        ResponseEntity<Bill> postResponse = restTemplate.postForEntity(url, bill, Bill.class);
        assertNotNull(postResponse);
        assertNotNull(postResponse.getBody());
        bill = postResponse.getBody();
        System.out.println("Saved data: " + bill);
        assertEquals(bill.getAppointId(), postResponse.getBody().getBillNo());
    }

    @Test
    public void b_read() {
        String url = baseURL + "read/" + bill.getBillNo();
        System.out.println("URL: " + url);
        ResponseEntity<Bill> response = restTemplate.getForEntity(url, Bill.class);
        assertEquals(bill.getBillNo(), response.getBody().getBillNo());
    }

    @Test
    public void c_update() {

        Bill updatedBill = new Bill.Builder().copy(bill)
                .setAppointId("336622")
                .setPatientId("54778865")
                .setAmount("R2500")
                .build();
        String url = baseURL + "update";
        System.out.println("URL: " + url);
        System.out.println("Updated bill: " + updatedBill);
        ResponseEntity<Bill> response = restTemplate.postForEntity(url, updatedBill, Bill.class);
        assertEquals(bill.getBillNo(), response.getBody().getBillNo());
    }


    @Test
    public void d_getAll() {
        String url = baseURL + "all";
        HttpHeaders headers = new HttpHeaders();
        HttpEntity<String> entity = new HttpEntity<>(null, headers);
        ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
        System.out.println(response);
        System.out.println(response.getBody());
    }

    @Test
    public void e_delete() {
        String url = baseURL + "delete/" + bill.getBillNo();
        System.out.println("URL: " + url);
        restTemplate.delete(url);
    }
}