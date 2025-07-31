
package com.avcoe.model;

import java.util.ArrayList;
import java.util.List;

public class FacultyRepo {
    private static List<Faculty> list = new ArrayList<>();

    public void insert(Faculty f) {
        list.add(f);
    }

    public List<Faculty> getAll() {
        return list;
    }

    public Faculty getById(int id) {
        for (Faculty f : list) {
            if (f.getId() == id) {
                return f;
            }
        }
        return null;
    }

    public void delete(int id) {
        list.removeIf(f -> f.getId() == id);
    }

    public void update(Faculty updatedFaculty) {
        for (int i = 0; i < list.size(); i++) {
            Faculty f = list.get(i);
            if (f.getId() == updatedFaculty.getId()) {
                list.set(i, updatedFaculty);
                break;
            }
        }
    }
}
