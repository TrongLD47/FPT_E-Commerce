package springboot.ecommerce.entity;

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
@Table(name = "product_images")
@Getter
@Setter
public class ProductImageEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String path;
	
	@OneToMany(mappedBy = "productImageEntity")
	private List<ProductEntity> productEntity;
	
	/**
	 * 
	 */
	public ProductImageEntity() {
		
	}
	
	
}
