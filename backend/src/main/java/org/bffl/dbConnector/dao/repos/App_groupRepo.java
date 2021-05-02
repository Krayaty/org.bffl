package org.bffl.dbConnector.dao.repos;

import org.bffl.dbConnector.dao.model.App_group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface App_groupRepo extends JpaRepository<App_group, String> {


    @Modifying
    @Query(nativeQuery = true, value =
            "INSERT INTO app_group(name, max_size) " +
                    "VALUES (:new_group_name, :new_max_size);")
    Boolean saveGroup(String new_group_name, int new_max_size);

    @Modifying
    @Query(nativeQuery = true, value =
            "UPDATE app_group " +
            "SET max_size = :new_max_size " +
            "WHERE name = :searched_group_name;")
    Boolean updateMaxSizeOfGroup(String searched_group_name, int new_max_size);

    @Modifying
    @Query(nativeQuery = true, value =
            "DELETE FROM app_group " +
            "WHERE name = :searched_group_name;")
    Boolean deleteGroupById(String searched_group_name);

}
