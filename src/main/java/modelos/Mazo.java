package modelos;
import java.util.ArrayList;
import java.util.Collections;
public class Mazo {
    public ArrayList<Carta> cartasTablero;
    private int cont = 0;
    private int cardcount = 0;
    public int contca = 0;
    public Carta carta1 = null;
    public Carta carta2 = null;
    
    public Mazo(){
        this.init();
        Collections.shuffle(cartasTablero);
        this.creaMazoPair();
    }

    private void init(){
        cartasTablero = new ArrayList<Carta>();
        for (int i = 1; i <= 40; i++){
            cartasTablero.add(new Carta(i));
        }
    }

    public void creaMazoPair(){
        int size = this.cartasTablero.size();
        for (int i = 0; i < (size/2); i++){
            this.cartasTablero.remove(0);
        }
        for (int i = 0; i < (size/2); i++){
            Carta c = new Carta(cartasTablero.get(i).getCodigo());
            this.cartasTablero.add(c);
        }
        Collections.shuffle(cartasTablero);
    }

    public Carta extrae(){
        return cartasTablero.get(cont++);
    }

    public int getContca() {
        return contca;
    }

    public void setContca(int contca) {
        this.contca = contca;
    }

    public void setCont(int cont) {
        this.cont = cont;
    }

    public int getModuleCardcount() {
        return cardcount%3;
    }

    public int getCardcount() {
        return cardcount;
    }

    public void setCardcount() {
        System.out.println(this.cardcount);
        this.cardcount++;
    }

    public void comprobar(){
        contca++;
        if (carta1.equals(carta2)){
            carta1.setInvisible();
            carta2.setInvisible();
        } else {
            carta1.setFace(50);
            carta2.setFace(50);
        }
    }
}