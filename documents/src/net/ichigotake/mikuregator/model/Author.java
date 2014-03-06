package documents.src.net.ichigotake.mikuregator.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Author implements Model {

    public List<Author> getAll() {
        return new ArrayList<Author>();
    }

    public Author get(String name) {
        return new Author();
    }

    public void add(Map<String, Object> author) {

    }

    public boolean exists() {
        return false;
    }

    public boolean upToDate() {
        return false;
    }

    public void save() {

    }

    public List<Author> ranking() {
        return new ArrayList<Author>();
    }
}
