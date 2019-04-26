package controller;

import domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.ProductService;

import java.util.List;

@Controller
@RequestMapping("/product/")
public class ProductController {
    @Autowired
    ProductService productService;
    @RequestMapping("findAll")
    public String findAll(Model model){
        try {
            List<Product> productList=productService.findAll();
            model.addAttribute("productList",productList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "productList";
    }
}
