package it.areaBimbi.repository;

import java.util.List;

public interface JpaRepository<T, ID> {

	void save(T entity);

	void update(T entity);

	void deleteById(ID id);

	void delete(T entity);

	T findById(ID id);

	List<T> findAll();

	Long count();

}
