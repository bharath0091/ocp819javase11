package zoo.visitor;

import zoo.tours.api.Tour;
import zoo.tours.reservations.TourFinder;

import java.util.List;

public class Visitor {
    public static void main(String... args) {
        List<Tour> tours = TourFinder.findAllTours();
        System.out.println("Total no of Tours : " + tours.size());
    }
}
