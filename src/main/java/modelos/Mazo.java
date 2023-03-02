package modelos;
import java.util.ArrayList;
import java.util.Collections;
public class Mazo {
    private ArrayList<Carta> mazo;
    public Mazo(){
        this.init();
        Collections.shuffle(mazo);
        this.creaMazoPair();
    }

    private void init(){
        mazo = new ArrayList<Carta>();
        for (int i = 1; i <= 40; i++){
            mazo.add(new Carta(i));
        }
    }

    public void creaMazoPair(){
        int size = this.mazo.size();
        for (int i = 0; i < (size/2); i++){
            this.mazo.remove(0);
        }
        for (int i = 0; i < (size/2); i++){
            this.mazo.add(mazo.get(i));
        }
        Collections.shuffle(mazo);
    }

    public Carta extrae(){
        return mazo.remove(0);
    }
}