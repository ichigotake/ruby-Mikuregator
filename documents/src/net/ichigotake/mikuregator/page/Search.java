package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Repository;

import java.util.List;

public class Search implements Page {

    @Override
    public void render() {
        List<Repository> repositories = new Repository().search("keyword");
        // bind view
    }
}
