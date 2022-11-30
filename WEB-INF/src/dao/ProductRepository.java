package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }


	public ProductRepository() {
		Product bag = new Product("P1234", "[GG 마몽] 숄더백", 3500000);
		bag.setDescription("12323-px, 재호가 들어도 너무 예쁜 숄더백, merong");
		bag.setCategory("BAG");
		bag.setManufacturer("Gucci");
		bag.setUnitsInStock(1000);
		bag.setCondition("New");
		bag.setFilename("P1234.png");
        
        
		Product ring = new Product("P1235", "인터로킹 G 반지", 1500000);
		ring.setDescription("13.3-inch, 현석오빠가 차면 개간지는 반지, merong");
		ring.setCategory("Notebook");
		ring.setManufacturer("LG");
		ring.setUnitsInStock(1000);
		ring.setCondition("Refurbished");
		ring.setFilename("P1235.png");

		Product watch = new Product("P1236", "[G-타임리스] 시계, 29mm", 520000);
		watch.setDescription("212.8*125.6*6.6mm,  주영이가 차면 간지나는 시계, goodggooooddd");
		watch.setCategory("watch");
		watch.setManufacturer("Gucci");
		watch.setUnitsInStock(1000);
		watch.setCondition("Old");
		watch.setFilename("P1236.png");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(bag);
		listOfProducts.add(ring);
		listOfProducts.add(watch);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    //20220928 getProductById
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
	listOfProducts.add(product);
   }

}
