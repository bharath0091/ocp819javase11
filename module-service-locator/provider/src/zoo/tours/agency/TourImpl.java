package zoo.tours.agency;

import zoo.tours.api.Souvenir;
import zoo.tours.api.Tour;

public class TourImpl implements Tour {
    @Override
    public String name() {
        return "a tour";
    }

    @Override
    public int length() {
        return 10;
    }

    @Override
    public Souvenir getSouvenir() {
        return new Souvenir();
    }
}
