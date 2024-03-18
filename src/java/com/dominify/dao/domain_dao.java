
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
        String query = "select domain_name from domain where host_name=? ";
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
                            avail_domain.add("com");
                            continue;
                        case 1:
                            avail_domain.add("in");
                            continue;
                        case 2:
                            avail_domain.add("org");
                            continue;
                        case 3:
                            avail_domain.add("net");
                            continue;
                        case 4:
                            avail_domain.add("ai");
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

}
