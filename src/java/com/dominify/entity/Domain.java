package com.dominify.entity;


public class Domain {
    private String host,domain;
    private String database,ssl,domain_sell;
    private int valid;
    private int price,id;

    public Domain() {
    }

    public Domain(String host, String domain, int id, String database, String ssl, String domain_sell, int valid) {
        this.host = host;
        this.domain = domain;
        this.id = id;
        this.database = database;
        this.ssl = ssl;
        this.domain_sell = domain_sell;
        this.valid = valid;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public int getOwner() {
        return id;
    }

    public void setOwner(int id) {
        this.id = id;
    }

    public String isDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public String isSsl() {
        return ssl;
    }

    public void setSsl(String ssl) {
        this.ssl = ssl;
    }

    public String isDomain_sell() {
        return domain_sell;
    }

    public void setDomain_sell(String domain_sell) {
        this.domain_sell = domain_sell;
    }

    public int getValid() {
        return valid;
    }

    public void setValid(int valid) {
        this.valid = valid;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
    
}
