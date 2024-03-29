package pattern;

public class Follower implements Observer {

    private String followerName;

    public Follower(String followerName) {
        this.followerName = followerName;
    }

    @Override
    public void update(String status) {
        System.out.println(this.followerName + " a reçu une notification : " + status);
    }

}
