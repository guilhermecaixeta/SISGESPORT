package com.ifg.sistema.sisgesport.api.security.config;

import com.ifg.sistema.sisgesport.api.security.JwtAuthenticationEntryPoint;
import com.ifg.sistema.sisgesport.api.security.filter.JwtAuthenticationTokenFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private JwtAuthenticationEntryPoint unauthorizedHandler;

    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    public void configureAuthentication(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
        authenticationManagerBuilder.userDetailsService(this.userDetailsService).passwordEncoder(passwordEncoder());
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public JwtAuthenticationTokenFilter authenticationTokenFilterBean() throws Exception {
        return new JwtAuthenticationTokenFilter();
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.csrf().disable().exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and().authorizeRequests()
                .antMatchers("/api/sisgesport/instituicao/BuscarTodos",
                        "/api/sisgesport/curso/BuscarEquipePorIdInstituicao/**",
                        "/api/sisgesport/turma/BuscarPorCursoId/**", "/api/sisgesport/cargo/BuscarPorInstituicaoId/**",
                        "/api/sisgesport/aluno/cadastrar/**", "/api/sisgesport/aluno/BuscarPorMatricula/**",
                        "/api/sisgesport/servidor/cadastrar/**", "/api/sisgesport/servidor/BuscarPorMatricula/**", "/api/sisgesport/estado/BuscarTodos/**",
                        "/api/sisgesport/municipio/BuscarPorIdEstado/**", "/v2/api-docs",
                        "/swagger-resources/**", "/configuration/security", "/swagger-ui.html", "/webjars/**")
                .permitAll().and().authorizeRequests().antMatchers().permitAll().and().authorizeRequests()
                .antMatchers("/auth/**").permitAll().anyRequest().authenticated();
        httpSecurity.addFilterBefore(authenticationTokenFilterBean(), UsernamePasswordAuthenticationFilter.class);
        httpSecurity.headers().cacheControl();

    }

}