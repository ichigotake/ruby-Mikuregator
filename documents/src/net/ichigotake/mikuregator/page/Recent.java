package documents.src.net.ichigotake.mikuregator.page;

import documents.src.net.ichigotake.mikuregator.model.Repository;

import java.util.HashMap;
import java.util.List;

public class Recent implements Page {

    @Override
    public void render() {
        List<Repository> repositories = new Repository().recent(new HashMap<String, Object>());
        // bind view
    }
}
