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
@Table(name = "shop")
@Getter
@Setter
public class ShopEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String address;
	
	private String phone;
	
	private String description;
	
	private String linkImage;
	
	private String email;

	@OneToMany(mappedBy = "shopEntity")
	private List<OrderEntity> orderEntity;
	
	/**
	 * 
	 */
	public ShopEntity() {
		
	}
	
	
}
