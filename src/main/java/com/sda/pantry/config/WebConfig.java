package com.sda.pantry.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.context.support.ResourceBundleThemeSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.sda.pantry.mvc")
@EnableWebMvc
public class WebConfig implements WebMvcConfigurer {
    @Bean
    public ViewResolver viewResolver (){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/assets/**", "/images/**")
                .addResourceLocations("/images/", "/assets/")
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new PathResourceResolver());
    }

//    @Bean
//    public ResourceBundleThemeSource themeSource() {
//        ResourceBundleThemeSource themeSource
//                = new ResourceBundleThemeSource();
//        themeSource.setDefaultEncoding("UTF-8");
//        themeSource.setBasenamePrefix("themes.");
//        return themeSource;
//    }

}
