package com.user.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.user.model.User;

@Repository
public interface UserRepo extends CrudRepository<User, Integer> {

}
