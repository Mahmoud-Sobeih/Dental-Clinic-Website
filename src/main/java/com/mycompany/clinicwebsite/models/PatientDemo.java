/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.clinicwebsite.models;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author User
 */
public class PatientDemo {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int insertUser(Patient patient) {

        List<Patient> loginResult = validateEmail(patient);
        if (loginResult.isEmpty()) {
            String insertEmailQuery = "insert into login (email,password)"
                    + " values(?,?)";
            int reurnedValue = jdbcTemplate.update(insertEmailQuery, patient.getEmail(), patient.getPassword());

            List<Patient> patientResult = validatePatient(patient);
            if (patientResult.isEmpty()) {
                String insertPatientQuery = "insert into patient (pName,pPhone,pEmail,pBD,pGender)"
                        + " values(?,?,?,?,?)";
                reurnedValue += jdbcTemplate.update(insertPatientQuery, patient.getName(),
                        patient.getPhone(),
                        patient.getEmail(),
                        patient.getBirthday(),
                        patient.getGender());
            } else {
                String updatePatientQuery = "update patient Set pName=?, pEmail=?, pBD=?, pGender=?  where pPhone=?";
                reurnedValue += jdbcTemplate.update(updatePatientQuery, patient.getName(),
                        patient.getEmail(),
                        patient.getBirthday(),
                        patient.getGender(),
                        patient.getPhone());
            }
            return reurnedValue;
        } else {
            return 0;
        }
    }

    public int reservation(HttpSession session, Patient patient) {
        List<Patient> result = validateAppointment(patient);
        if (result.isEmpty()) {
            String query = "update patient Set dName=?, appDate=?, appTime=?  where pEmail = ?";
            return jdbcTemplate.update(query, patient.getDoctor(),
                    patient.getBookingDate(),
                    patient.getBookingTime(),
                    session.getAttribute("user"));
        } else {
            return 0;
        }

    }

    public List<Patient> authentication(final Patient patient) {
        String query = "select email from login where email=? and password=?";
        return jdbcTemplate.query(query, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, patient.getEmail());
                ps.setString(2, patient.getPassword());
            }
        },
                new ResultSetExtractor<List<Patient>>() {
            @Override
            public List<Patient> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Patient> list = new ArrayList<>();
                if (rs.next()) {
                    Patient p = new Patient();
                    list.add(p);
                }
                return list;
            }
        });
    }

    public List<Patient> validateEmail(final Patient patient) {
        String query = "select email from login where email=?";
        return jdbcTemplate.query(query, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, patient.getEmail());
            }
        },
                new ResultSetExtractor<List<Patient>>() {
            @Override
            public List<Patient> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Patient> list = new ArrayList<>();
                if (rs.next()) {
                    Patient p = new Patient();
                    list.add(p);
                }
                return list;
            }
        });
    }

    public List<Patient> validatePatient(final Patient patient) {
        String query = "select pName from patient where pPhone=?";
        return jdbcTemplate.query(query, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setInt(1, patient.getPhone());
            }
        },
                new ResultSetExtractor<List<Patient>>() {
            @Override
            public List<Patient> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Patient> list = new ArrayList<>();
                if (rs.next()) {
                    Patient p = new Patient();
                    list.add(p);
                }
                return list;
            }
        });
    }

    public List<Patient> validateAppointment(final Patient patient) {
        String query = "select pName from patient where appDate=? and appTime=?";
        return jdbcTemplate.query(query, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, patient.getBookingDate());
                ps.setString(2, patient.getBookingTime());
            }
        },
                new ResultSetExtractor<List<Patient>>() {
            @Override
            public List<Patient> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Patient> list = new ArrayList<>();
                if (rs.next()) {
                    Patient p = new Patient();
                    list.add(p);
                }
                return list;
            }
        });
    }

    public List<Patient> getAppointments(final Patient patient) {
        String query = "select pName, pPhone, appTime from patient where appDate=?";
        return jdbcTemplate.query(query, new PreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps) throws SQLException {
                ps.setString(1, patient.getBookingDate());
            }
        },
                new ResultSetExtractor<List<Patient>>() {
            @Override
            public List<Patient> extractData(ResultSet rs) throws SQLException, DataAccessException {
                List<Patient> list = new ArrayList<>();
                while (rs.next()) {
                    Patient p = new Patient();
                    p.setName(rs.getString(1));
                    p.setPhone(rs.getInt(2));
                    p.setBookingTime(rs.getString(3));
                    list.add(p);
                }
                return list;
            }
        });
    }
}
