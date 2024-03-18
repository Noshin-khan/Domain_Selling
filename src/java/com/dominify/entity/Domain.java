package com.dominify.entity;


public class Domain {
    private String host,domain,owner;
    private boolean database,ssl,domain_sell;
    private int valid;

    public Domain() {
    }

    public Domain(String host, String domain, String owner, boolean database, boolean ssl, boolean domain_sell, int valid) {
        this.host = host;
        this.domain = domain;
        this.owner = owner;
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

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public boolean isDatabase() {
        return database;
    }

    public void setDatabase(boolean database) {
        this.database = database;
    }

    public boolean isSsl() {
        return ssl;
    }

    public void setSsl(boolean ssl) {
        this.ssl = ssl;
    }

    public boolean isDomain_sell() {
        return domain_sell;
    }

    public void setDomain_sell(boolean domain_sell) {
        this.domain_sell = domain_sell;
    }

    public int getValid() {
        return valid;
    }

    public void setValid(int valid) {
        this.valid = valid;
    }
    
    
}
