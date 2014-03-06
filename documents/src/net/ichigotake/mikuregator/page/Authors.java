package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Author;

import java.util.List;

public class Authors implements Page {

    @Override
    public void render() {
        List<Author> authors = new Author().ranking();
        // bind view
    }
}
