package pattern;

public abstract class Subject {
	
    abstract void addObserver(Observer observer);
    abstract void removeObserver(Observer observer);
    abstract void notifyObservers(String status);
    
}
