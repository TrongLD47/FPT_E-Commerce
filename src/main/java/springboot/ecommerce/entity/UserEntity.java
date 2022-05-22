package springboot.ecommerce.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "user1")
@Getter
@Setter
public class UserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String username;
	
	private String email;
	
	private String password;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate createTime;
	
	private LocalDate birthDay;
	
	private String address;
	
	private Integer gender;

	
	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_role"))
	private List<RoleEntity> roles;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany()
	@JoinTable(name = "history_user_order", joinColumns = @JoinColumn(name = "id_user"), inverseJoinColumns = @JoinColumn(name = "id_order"))
	private List<OrderEntity> OrderEntity;
	/**
	 * 
	 */
	public UserEntity() {
		
	}
	
	
}
