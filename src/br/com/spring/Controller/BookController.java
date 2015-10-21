package br.com.spring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.spring.Model.Book;

@Controller
public class BookController {
		
	@RequestMapping(value = "/livros", method = RequestMethod.POST)
	public ModelAndView addBook(Book book){	
		System.out.println("Gravando livro: "+book.getBookName());
		ModelAndView view = new ModelAndView();		
		view.addObject("Book", book);
		view.setViewName("book/addBook");
		return view;
	}
	
	 @RequestMapping(value = "/new", method = RequestMethod.GET)
	    public ModelAndView newUser() {
	        ModelAndView model = new ModelAndView("index");
	        model.addObject("book", new Book());
	        return model;      
	    }
}
