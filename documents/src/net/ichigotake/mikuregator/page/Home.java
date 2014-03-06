package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Author;
import documents.src.net.ichigotake.mikuregator.model.Repository;

import java.util.HashMap;
import java.util.List;

public class Home implements Page {

    @Override
    public void render() {
        List<Repository> recentRepositories = new Repository().recent(new HashMap<String, Object>());
        // bind view

        List<Author> authors = new Author().ranking();
        // bind view
    }
}
