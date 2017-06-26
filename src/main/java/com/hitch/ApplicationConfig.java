package com.hitch;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@Configuration
@EnableJpaRepositories(basePackages="com.hitch.repository")
@EntityScan(basePackages="com.hitch.entity")
public class ApplicationConfig {
}

