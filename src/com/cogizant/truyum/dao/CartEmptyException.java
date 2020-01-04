package com.cogizant.truyum.dao;

public class CartEmptyException extends Exception {
    /**
     
     * 
     */
    private static final long serialVersionUID = 1l;

    @Override
    public String toString() {
        return "Cart is Empty";
    }

}
