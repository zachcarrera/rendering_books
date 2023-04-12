package com.zachcarrera.renderingbooks.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zachcarrera.renderingbooks.models.Book;
import com.zachcarrera.renderingbooks.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;

	
	// methods that perform basic CRUD by calling BookRepository methods
	public List<Book> allBooks() {
		return bookRepository.findAll();
	}

	public Book findBook(Long id) {
		Optional<Book> optionalBook = bookRepository.findById(id);
		if (optionalBook.isPresent()) {
			return optionalBook.get();
		} else {
			return null;
		}
	}

	public Book createBook(Book book) {
		return bookRepository.save(book);
	}

	public Book updateBook(Long id, String title, String description, String language, Integer numOfPages) {

		Book updatedBook = new Book(title, description, language, numOfPages);

		updatedBook.setId(id);
		return bookRepository.save(updatedBook);
	}

	public void deleteBook(Long id) {
		bookRepository.deleteById(id);
	}
}
