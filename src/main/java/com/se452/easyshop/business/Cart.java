package com.se452.easyshop.business;
import java.util.*;
import java.io.Serializable;

public class Cart implements Serializable {

    private List<LineItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public void setItems(List<LineItem> lineItems) {
        items = lineItems;
    }

    public List<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        //If the item already exists in the cart, only the quantity is changed.
        String model = item.getProduct().getModel();
        int quantity = item.getQuantity();
        for (LineItem lineItem : items) {
            if (lineItem.getProduct().getModel().equals(model)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(LineItem item) {
        String code = item.getProduct().getModel();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getModel().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }
}