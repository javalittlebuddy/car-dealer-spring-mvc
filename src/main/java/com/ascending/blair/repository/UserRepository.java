package com.ascending.blair.repository;

import com.ascending.blair.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends CrudRepository<User, Long> {

    Optional<User> findById(Long id);

    List<User> findAll();

    User findByEmailIgnoreCase(String email);

    User findByUsernameIgnoreCase(String username);

    @Query("select u from User u where UPPER(u.firstName) = UPPER(?1) and UPPER(u.lastName) = UPPER(?2)")
    User findByLastnameAndFirstnameIgnoreCase(String firstName, String lastName);

}
