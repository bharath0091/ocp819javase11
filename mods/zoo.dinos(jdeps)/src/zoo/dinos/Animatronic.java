package zoo.dinos;

import sun.misc.Unsafe;

import java.time.LocalDate;
import java.util.List;

public class Animatronic {
    private List<String> names;
    private LocalDate visitDate;


    public void unsafeMethod() {
        Unsafe unsafe = Unsafe.getUnsafe();
    }
}
