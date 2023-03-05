package modelos;

public class Carta {
    public static final String[] palos={"Oros, Copas, Espadas, Bastos"};
    public static final String[] numerosYFiguras={"Uno, Dos, Tres, Cuatro, Cinco, Seis, Siete, Sota, Caballo, Rey"};
    private Integer codigo;
    private Integer pos;
    private int face;
    private String invisible;

    public Carta(int cod){
        this.codigo = cod;
        this.face = 50;
        this.invisible = "";
        this.pos = null;
    }

    public int getFace() {
        return face;
    }
    
    public void setFace(int face) {
        this.face = face;
    }

    public String isInvisible() {
        return this.invisible;
    }

    public void setInvisible() {
        this.invisible = "style='visibility: hidden;'";
    }

    public int getCodigo(){
        return this.codigo;
    }

    String getPalo(){
        return Carta.palos[(int)(this.codigo/10)];
    }

    String getNumeroAsString(){
        return Carta.numerosYFiguras[(int)(this.codigo%10)];
    }

    int getNumeroAsInt(){
        return (int)(this.codigo%10);
    }

    public Integer getPos() {
        return pos;
    }

    public void setPos(Integer pos) {
        this.pos = pos;
    }

    @Override
    public boolean equals(Object obj) {
        // TODO Auto-generated method stub
        return this.codigo == ((Carta)obj).getCodigo() && this.pos != ((Carta)obj).getPos();
    }

    @Override
    public String toString(){
        return String.format("<div class=\"carta\"><a href=\"game.jsp?carta=%02d&pos=%d\"><img src=\"assets/img/%02d.png\" %s></a></div>", this.getCodigo(), this.getPos(), this.getFace(), this.isInvisible());
    }
}