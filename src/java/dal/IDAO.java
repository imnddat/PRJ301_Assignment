/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.Hashtable;
import java.util.List;

/**
 *
 * @author hoang
 */
public interface IDAO<T> {
    /**
     *
     * @param sql query
     * @return A List contains T
     */
    abstract List<T> parse(String sql);
    
    T get(int id);
    
    List<T> getAll();

    void create(T t);

    void update(T t) ;

    void delete(T t);
}
