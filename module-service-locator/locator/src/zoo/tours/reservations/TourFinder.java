package zoo.tours.reservations;

import zoo.tours.api.Tour;

import java.util.List;
import java.util.ServiceLoader;
import java.util.ServiceLoader.Provider;
import java.util.stream.Collectors;

public class TourFinder {
    public static List<Tour> findAllTours() {
        return ServiceLoader.load(Tour.class)
                .stream()
                .map(Provider::get)
                .collect(Collectors.toList());
    }
}
