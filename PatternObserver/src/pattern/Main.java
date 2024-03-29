package pattern;

public class Main {


	public static void main(String[] args) {
		
		Influenceur influenceur = new Influenceur();

        Follower follower1 = new Follower("Follower1");
        Follower follower2 = new Follower("Follower2");

        influenceur.addObserver(follower1);
        influenceur.addObserver(follower2);

        influenceur.publishNewStatus("Nouvelle vidéo disponible !");
        // Output:
        // Follower1 a reçu une notification : Nouvelle vidéo disponible !
        // Follower2 a reçu une notification : Nouvelle vidéo disponible !

        influenceur.removeObserver(follower1);

        influenceur.publishNewStatus("Live en cours !");
        // Output:
        // Follower2 a reçu une notification : Live en cours !
		
		

	}

}
