/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.util.*;
import domains.Movie;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import javax.servlet.http.HttpSession;
import managers.MovieManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Desktop
 */
@Controller
public class MovieListController {
    
    private MovieManager movieManager;
    
    @RequestMapping(value="/comingSoonPage", method=RequestMethod.GET)
    public ModelAndView viewComingSoon(){
        ModelAndView mv = new ModelAndView("comingSoonPage");
        List<Movie> comingSoonMovies = movieManager.getComingSoonMovies();
        mv.addObject("comingSoonMovies", comingSoonMovies);
        
        System.out.println("34!!!");
      
        return mv;
    }


    @RequestMapping(value="/boxOfficePage", method=RequestMethod.GET)
    public ModelAndView viewBoxOffice(){
        ModelAndView mv = new ModelAndView("boxOfficePage");
        List<Movie> boxOfficeMovies = movieManager.getBoxOfficeMovies();
        mv.addObject("boxOfficeMovies", boxOfficeMovies);
        
        
        return mv;
    }
    
    public MovieManager getMovieManager() {
        return movieManager;
    }

    public void setMovieManager(MovieManager movieManager) {
        this.movieManager = movieManager;
        //movieManager.updateMovies();
    }
    
}
