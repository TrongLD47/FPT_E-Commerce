package springboot.ecommerce.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "discount1")
@Getter
@Setter
public class DiscountEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String typeOfDiscount;
	
	private Integer percentz;
	
	private String name;
	
	private String code;
	
	private String description;
	
	private String detailDiscount;
	
	private LocalDate startDateDiscount;
	
	private LocalDate endDateDiscount;

	@OneToMany(mappedBy = "discountEntity")
	private List<ProductEntity> productEntity;
	
	/**
	 * 
	 */
	public DiscountEntity() {
		
	}
	
	
	
	
}
