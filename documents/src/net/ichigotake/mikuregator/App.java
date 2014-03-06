package documents.src.net.ichigotake.mikuregator;

import documents.src.net.ichigotake.mikuregator.page.*;

/**
 * Created by ichigotake on 2014/03/05.
 */
public class App {

    void dispatch() {
        new About();
        new Authors();
        new Home();
        new Profile();
        new Random();
        new Recent();
        new Search();
    }
}
