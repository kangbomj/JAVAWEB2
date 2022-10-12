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
		Product ring = new Product("P1234", "Wolchang Ring", 800000);
		ring.setDescription("12323-px, wolchang Message ring, Almond");
		ring.setCategory("Ring");
		ring.setManufacturer("Wolchang");
		ring.setUnitsInStock(1000);
		ring.setCondition("New");
		ring.setFilename("P1234.png");

		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(ring);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
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
