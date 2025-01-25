import java.util.Scanner;//Inserta la referenciajava.util que permite ingrear texto en el teclado.
//clase-objeto.
public class Main {//iniciamos las clase main la cual permite interactuar con el teclado.
   //Metodo-procedimiento.
    public static void main(String[] args) { //Ente al metodo main el cual esta dentro de la clase main.
        Scanner sc = new Scanner(System.in); //Creacion de un objeto.
        System.out.print("Ingresa el primer numero: ");// ingresa el primer numero.
        int num1 = sc . nextInt(); // se almacena un dato ingresado por teclado.
        System.out.print("Ingresa el Segundo numero: ");// ingresa el segundo numero.
        int num2 = sc . nextInt();
        System.out.print("Ingresa el tercer numero: ");// ingresa el 3er numero.
        int num3 = sc . nextInt();
        int resultado = num1*num2*num3; //Se declara la variable resultado y lo que va hacer.
        System.out.print("El resultado de la multiplicacion es: " + num1*num2*num3); //Se inprime el resultado.
        sc.close();
    }
}