package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Repository;

import java.util.List;

public class Random implements Page {

    @Override
    public void render() {
        List<Repository> repositories = new Repository().random();
        // bind view;
    }
}
