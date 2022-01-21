/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import beans.Machine;
import controller.MachineController;
import javax.servlet.http.HttpServletRequest;
import service.MachineService;

/**
 *
 * @author Lenovo X1
 */
public class test {
    public static void main(String[]args){
             MachineService ms=new MachineService();
             System.out.println("ss");
             for(Machine machine:ms.findAll()){
                 System.out.println(machine);
             }
    }
}
