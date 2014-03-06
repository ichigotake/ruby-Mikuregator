package documents.src.net.ichigotake.mikuregator.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Repository implements Model {

    public Repository get(String fullName) {
        return new Repository();
    }

    public List<Repository> random() {
        return new ArrayList<Repository>();
    }

    public List<Repository> search(String keyword) {
        return new ArrayList<Repository>();
    }

    public List<Repository> recent(Map<String, Object> condition) {
        return new ArrayList<Repository>();
    }

    public boolean exists() {
        return false;
    }

    public boolean upTODate() {
        return false;
    }

    public void save() {
        
    }

    public Author getOwner() {
        return new Author();
    }
}
