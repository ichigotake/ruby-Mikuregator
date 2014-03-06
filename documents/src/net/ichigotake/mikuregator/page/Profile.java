package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Author;
import documents.src.net.ichigotake.mikuregator.model.Repository;

import java.util.ArrayList;
import java.util.List;

public class Profile implements Page {

    @Override
    public void render() {
        Author profile = new Author().get("name");
        // bind view

        List<Repository> repositories = new ArrayList<Repository>();
        // bind view;
    }
}
