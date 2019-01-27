package com.sda.pantry.dto;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class CategoryFinder {
    @Bean
public String translateCategory(String number){

switch (number) {
    case "1":
return "Deser";

    case "2":
return "Obiad";


    case "3":
return "śniadanie";


default: return "brak";
}


}
}
