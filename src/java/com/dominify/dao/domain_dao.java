package com.dominify.dao;

import java.sql.*;
import com.dominify.connectivity.*;
import com.dominify.entity.Domain;
import java.util.ArrayList;

public class domain_dao {

    private boolean availabilty = false;
    private Connection con;

    private PreparedStatement ps;
    private ResultSet rs;
    private int domain_arr[];
    private ArrayList avail_domain, pro_domain;
    private int count, index;

    public boolean checkAvailablity(Domain d) {
        String query = "select domain from registerDomain where hostname=? ";
        try {

            con = user_connection.getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, d.getHost());
            rs = ps.executeQuery();

            domain_arr = new int[5];
            domain_arr[0] = 1;
            domain_arr[1] = 1;
            domain_arr[2] = 1;
            domain_arr[3] = 1;
            domain_arr[4] = 1;

            avail_domain = new ArrayList();
            pro_domain = new ArrayList();
            pro_domain.add("com");
            pro_domain.add("in");
            pro_domain.add("org");
            pro_domain.add("net");
            pro_domain.add("ai");

            index = pro_domain.indexOf(d.getDomain());

            while (rs.next()) {
                String temp = rs.getString(1);
                switch (temp) {
                    case "com":
                        domain_arr[0] = 0;
                        continue;
                    case "in":
                        domain_arr[1] = 0;
                        continue;
                    case "org":
                        domain_arr[2] = 0;
                        continue;
                    case "net":
                        domain_arr[3] = 0;
                        continue;
                    case "ai":
                        domain_arr[4] = 0;
                        continue;
                }
            }
            for (int i = 0; i < 5; i++) {
                if (domain_arr[i] == 1) {
                    count++;
                    switch (i) {
                        case 0:
                            avail_domain.add(d.getHost()+ "." + "com");
                            continue;
                        case 1:
                            avail_domain.add(d.getHost()+ "." + "in");
                            continue;
                        case 2:
                            avail_domain.add(d.getHost()+ "." + "org");
                            continue;
                        case 3:
                            avail_domain.add(d.getHost()+ "." + "net");
                            continue;
                        case 4:
                            avail_domain.add(d.getHost()+ "." + "ai");
                            continue;
                    }
                } else {
                    continue;
                }
            }

            if (domain_arr[index] == 1) {
                availabilty = true;

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return availabilty;
    }

    public ArrayList getAvail_domain() {
        return avail_domain;
    }

    public int save_domain(Domain d) {
        String q = "select cost from rates where domain_name=?";
        int pr = 0;
        try {
            con = user_connection.getConnection();

            ps = con.prepareStatement(q);
            ps.setString(1, d.getDomain());
            rs = ps.executeQuery();
            while (rs.next()) {
                pr = rs.getInt("cost");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;

    }

    public boolean paymentAuth(int e, Domain d) {
        boolean status = false;
        String qu = "select coin from user where id=?";
        int r = 0;
        try {
            con = user_connection.getConnection();

            ps = con.prepareStatement(qu);
            ps.setInt(1, d.getOwner());
            rs = ps.executeQuery();
            while (rs.next()) {
                r = rs.getInt("coin");
            }
            if (r >= e) {
                status = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return status;
    }

    public boolean allocate_domain(Domain d) {
        boolean status = false;

        return status;
    }

    public boolean store_domain(Domain d) {
        boolean status = false;
        String query = "insert into registerDomain values (?,?,?,?,?,?,?)";
        try {
            con = user_connection.getConnection();
            ps=con.prepareStatement(query);
            ps.setInt(1,d.getOwner());
            ps.setString(2,d.getHost());
            ps.setString(3, d.getDomain());
            ps.setString(4, d.isDatabase());
            ps.setString(5,d.isSsl());
            ps.setString(6,d.isDomain_sell());
            ps.setInt(7, d.getValid());
            ps.executeUpdate();
                       status=true;

            }
         catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}


