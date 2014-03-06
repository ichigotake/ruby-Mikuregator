package documents.src.net.ichigotake.mikuregator.batch;

import documents.src.net.ichigotake.mikuregator.model.Author;
import documents.src.net.ichigotake.mikuregator.model.Repository;
import documents.src.net.ichigotake.mikuregator.net.GithubApi;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GithubAggregator implements BaseBatch {

    @Override
    public void run() {
        Map<String, Object> options = new HashMap<String, Object>();
        List<Repository> repositories = new GithubApi().search(options);

        for (Repository repository : repositories) {
            if (repository.upTODate()) {
                repository.save();
                Author owner = repository.getOwner();
                if (!owner.upToDate()) {
                    owner.save();
                }
            }
        }
    }
}
