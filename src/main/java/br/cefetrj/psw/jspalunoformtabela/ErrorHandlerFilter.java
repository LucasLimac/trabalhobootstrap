/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cefetrj.psw.jspalunoformtabela;
import org.apache.log4j.Logger;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 *
 * @author Lucas Lima
 */
@WebFilter("/*")
public class ErrorHandlerFilter implements Filter{

    @Override
    public void init(FilterConfig fc) throws ServletException {
    }

    @Override
    /**
     * Classe que faz o filtro caso algum erro seja encontrada que não foi tratado
     * Armazena o erro em um arquivo e Dispacha para uma pagina de erro para o usuario.
     */
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        try{
            fc.doFilter(sr, sr1);
        }catch(Exception e){
            Logger lg = Logger.getLogger(ErrorHandlerFilter.class);
            lg.error("Exception não tratada foi encontrada", e);
            sr.getRequestDispatcher("/error.html").forward(sr, sr1);
        }
    }

    @Override
    public void destroy() {
    }
    
}
