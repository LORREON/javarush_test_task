package com.lorreon.controllers;

import com.lorreon.model.Book;
import com.lorreon.service.BookService;
import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {


    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String listBooks(Model model) {
        model.addAttribute("listBooks", this.bookService.listBooks());
        return "list";
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String addBooksForm(Model model) {
        model.addAttribute("book", new Book());
        return "add";
    }


    @RequestMapping(value = "add/new", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book, Model model) {


        if (book.getId() == 0) {
            this.bookService.addBook(book);

        } else {
            book.setReadAlready(true);
            book.setReadAlready(false);
            model.addAttribute("readonly", "false");
            this.bookService.updateBook(book);
        }

        return "redirect:../list";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id) {
        this.bookService.removeBook(id);
        return "redirect:/list";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model) {
        Book book = (Book) this.bookService.getBookById(id);
        model.addAttribute("readonly", "true");
        model.addAttribute("book", book);
        return "add";
    }

    @RequestMapping("bookdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model) {
        Book book = (Book) this.bookService.getBookById(id);
        book.setReadAlready(true);
        this.bookService.updateBook(book);
        model.addAttribute("book", book);

        return "bookdata";
    }


}
