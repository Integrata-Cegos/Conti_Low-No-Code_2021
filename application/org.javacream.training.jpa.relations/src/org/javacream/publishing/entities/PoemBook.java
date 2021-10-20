package org.javacream.publishing.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="PUBLISHING_POEMS")
public class PoemBook extends Book {

	private String era;

	public String getEra() {
		return era;
	}

	public void setEra(String era) {
		this.era = era;
	}


	PoemBook() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PoemBook(String description, Isbn isbn, int pages, double price,
			String title, BookStatistics bookInfo, boolean available, String era) {
		super(description, isbn, pages, price, title, bookInfo, available);
		this.era = era;
	}

	private static final long serialVersionUID = 1L;

}
