package springboot.ecommerce.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product")
@Getter
@Setter
public class ProductEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private Integer quantity;
	
	private String description;
	
	private String pathImage;
	
	private Float unitPrice;
	
	private String brand;
	
	private String code;
	
	@ManyToOne
	@JoinColumn(name = "id_subCategory")
	private SubCategoryEntity subCategoryEntity;
	
	@ManyToOne
	@JoinColumn(name = "id_productImage")
	private ProductImageEntity productImageEntity;
	
	@ManyToOne
	@JoinColumn(name = "id_productDetails")
	private ProductDetailsEntity productDetailsEntity;
	
	@ManyToOne
	@JoinColumn(name = "id_discount")
	private DiscountEntity discountEntity;
	
	@OneToMany(mappedBy = "productEntity")
	private List<OrderDetailEntity> orderDetailEntity;
	/**
	 * 
	 */
	public ProductEntity() {
		
	}
}
