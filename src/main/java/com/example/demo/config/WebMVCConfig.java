package com.example.demo.config;



import com.example.demo.filter.LoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;

import jakarta.servlet.MultipartConfigElement;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {

	@Autowired
    LoginInterceptor loginInterceptor;

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry
				.addResourceHandler("/resources/**")
				.addResourceLocations("/resources/");
//		registry
//				.addResourceHandler("/upload/**")
//				.addResourceLocations("/upload/");
	}

	@Bean("messageSource")
	public MessageSource getMessageSource() {
		ReloadableResourceBundleMessageSource source = new ReloadableResourceBundleMessageSource();
		source.setBasenames(
				"classpath:i18n/label"
		);
		source.setDefaultEncoding(StandardCharsets.UTF_8.name());
		return source;
	}

	@Bean
	public LocaleResolver localeResolver() {
		CookieLocaleResolver resolver = new CookieLocaleResolver();
		resolver.setDefaultLocale(new Locale("vi"));
		resolver.setCookieMaxAge(60 * 60 * 24 * 7);
		return resolver;
	}

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loginInterceptor)
				.addPathPatterns("/admin/**", "/gio-hang/**","/user/**","/hoa-don/**");

		LocaleChangeInterceptor changeInterceptor = new LocaleChangeInterceptor();
		changeInterceptor.setParamName("language");

		registry.addInterceptor(changeInterceptor)
			.addPathPatterns("/**")
			.excludePathPatterns("admin/**");


	}

}
