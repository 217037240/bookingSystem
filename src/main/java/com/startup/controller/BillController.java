package com.startup.controller;

import com.startup.entity.Bill;
import com.startup.entity.User;
import com.startup.factory.BillFactory;
import com.startup.service.impl.BillServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/bill")
public class BillController {

    @Autowired
    public BillServiceImpl billService;

    @GetMapping("/form")
    public String billForm(Model model) {
        model.addAttribute("billForm", new Bill());
        model.addAttribute("bills", billService.billList());
        return "bill/form";
    }

    @GetMapping("/list")
    @PreAuthorize("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
    public String billList(Model model){
        model.addAttribute("bills", billService.billList());
        return "bill/list";
    }

    @GetMapping("/add")
    public String billForm(@ModelAttribute Bill bill, Model model) {
        Bill newBill = BillFactory.generateBill(bill.getAmount(),
                bill.getPatientId(),
                bill.getAppointId());
        model.addAttribute("message", billService.create(newBill));
        model.addAttribute("appointmentId",  bill.getAppointId());
        return "bill/form";
    }


    @RequestMapping("/list/{id}")
    public Bill findById(@PathVariable Long id){
        return billService.findById(id);
    }

    @RequestMapping("/create")
    public Bill createBill(@RequestBody Bill bill){
        return billService.createBill(bill);
    }

    @RequestMapping("/delete/{id}")
    public String deleteById(@PathVariable Long id){
        return billService.deleteById(id);
    }




    @PostMapping(value = "/generate")
    public Bill create(@RequestBody Bill bill){
        Bill newBill = BillFactory.generateBill(bill.getAmount(),
                bill.getPatientId(),
                bill.getAppointId());
        return billService.create(newBill);
    }

    @GetMapping("/read/{billNo}")
    public Bill read(@PathVariable String billNo){
        return  billService.read(billNo);
    }

    @PostMapping("/update")
    public Bill update(@RequestBody Bill bill) {
        return billService.update(bill);
    }

    @GetMapping("/all")
    public Set<Bill> getall(){
        return billService.getAll();
    }

    @DeleteMapping("/delete/{bill}")
    public boolean delete(@PathVariable String bill) {
        return billService.delete(bill);
    }

}

