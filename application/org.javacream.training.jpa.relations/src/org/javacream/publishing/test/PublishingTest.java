package org.javacream.publishing.test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.javacream.publishing.JpaBooksService;
import org.javacream.publishing.entities.Author;
import org.javacream.publishing.entities.Book;
import org.javacream.publishing.entities.BookStatistics;
import org.javacream.publishing.entities.Isbn;
import org.javacream.publishing.entities.Publisher;
import org.javacream.util.Address;
import org.junit.Before;
import org.junit.Test;

public class PublishingTest {
	private EntityManager entityManager;

	@Before
	public void createEntityManager() throws Exception {
		entityManager = Persistence.createEntityManagerFactory("JPA")
				.createEntityManager();
	}

	//@Test
	public void insertPublishers() {
		EntityTransaction t = entityManager.getTransaction();
		t.begin();
		int publisherSize = 4;
		int booksSize = 40;
		int authorsSize = 3;

		List<String> keywords1 = Arrays.asList(new String[] { "sports",
				"socker" });
		List<String> keywords2 = Arrays.asList(new String[] {
				"science fiction", "star trek", "enterprise" });

		Author[] authors = new Author[authorsSize];
		for (int i = 0; i < authorsSize; i++) {
			Author author = new Author();
			ArrayList<String> givenNames = new ArrayList<String>(3);
			for (int j = 0; j < 3; j++) {
				givenNames.add("GivenName" + i + "_" + j);
			}
			author.setGivenNames(givenNames);
			author.setLastname("AuthorLastname" + (i + 1));
			authors[i] = author;
		}

		Publisher[] publishers = new Publisher[publisherSize];
		for (int i = 0; i < publisherSize; i++) {
			HashSet<Book> books = new HashSet<Book>();
			Publisher publisher = new Publisher("Publisher" + (i + 1), books,
					new Address("Publisher-City" + i, "Publisher-Street" + i));
			publishers[i] = publisher;
			entityManager.persist(publisher);

			for (int j = 0; j < booksSize; j++) {
				BookStatistics bookStatistics = new BookStatistics(50 * j,
						new Date());
				Book book = new Book("a simple book", new Isbn(i, j, 3, 4),
						200 + j, 9.95 * j, "book" + i + j, bookStatistics,
						false);
				if (j % 2 == 0) {
					authors[0].addBook(book);
				}
				if (i % 2 == 0) {
					authors[1].addBook(book);
				}
				if ((i + j) % 2 == 0) {
					authors[2].addBook(book);
				}
				if (i % 2 == 0) {
					book.setKeywords(keywords1);
				} else {
					book.setKeywords(keywords2);
				}
				publisher.addBooks(book);
			}
		}
		t.commit();

	}
	
	
	@Test 
	public void testJpaBooksService(){
		JpaBooksService jpaBooksService = new JpaBooksService();
		jpaBooksService.setEntityManager(entityManager);
		System.out.println(jpaBooksService.findBestsellers());
		System.out.println(jpaBooksService.findPublishersForAuthor(1l));
		System.out.println(jpaBooksService.findBestSellersOrdered());
	}
}
