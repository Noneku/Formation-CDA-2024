package pattern;

import java.util.ArrayList;
import java.util.List;

public class Influenceur extends Subject {
	
	private List<Observer> followers = new ArrayList<>();
    private String status;

	public Influenceur() {
		this.followers = new ArrayList<>();
	}
	
    public void publishNewStatus(String newStatus) {
        this.setStatus(newStatus);
        notifyObservers(newStatus);
    }

	@Override
	public void addObserver(Observer observer) {
		followers.add(observer);
	}

	@Override
	public void removeObserver(Observer observer) {
		followers.remove(observer);
	}

	@Override
	public void notifyObservers(String status) {
		for (Observer follower : followers) {
			//Je met à jour le status de tous mes followers
			
					
			follower.update(status);
		}
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
