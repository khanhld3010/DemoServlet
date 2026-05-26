package org.example.productmanager.service;

import org.example.productmanager.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "iPhone 14 Pro", 1200.0, "Điện thoại thông minh của Apple", "Apple"));
        products.put(2, new Product(2, "Samsung Galaxy S23", 950.0, "Điện thoại Android cao cấp", "Samsung"));
        products.put(3, new Product(3, "MacBook Pro M2", 2000.0, "Laptop chuyên nghiệp cho lập trình viên", "Apple"));
        products.put(4, new Product(4, "Dell XPS 13 Plus", 1500.0, "Laptop văn phòng thiết kế đẹp", "Dell"));
        products.put(5, new Product(5, "Bàn phím cơ Keychron", 100.0, "Bàn phím gõ êm tay", "Keychron"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        if (product.getId() == 0) {
            int maxId = products.keySet().stream().max(Integer::compareTo).orElse(0);
            product.setId(maxId + 1);
        }
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return products.values().stream()
                .filter(p -> p.getName().toLowerCase().contains(name.toLowerCase()))
                .collect(Collectors.toList());
    }
}
