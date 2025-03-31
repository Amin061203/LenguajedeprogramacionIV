import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("1.-Realizar Suma\n 2.-Realizar resta\n 3.-Realizar multiplicacion\n4.-Division\n5.-Ingresar la opcion deseada: ");//Se imprime el menu.

        String Opcion= sc.nextLine();
        Calculadora _calculadora = new Calculadora();
        double valorA;
        double valorB;

        System.out.println("Ingresa el primer numero: ");
        valorA = sc.nextDouble();
        System.out.println("Ingresa el primer numero: ");
        valorB = sc.nextDouble();


        if(Opcion.equals("Suma")){ //se inician las codiciones para la primer opcion del menu.

            System.out.print("El resultado de la suma es: "+ _calculadora.Suma(valorA,valorB));


        } else if (Opcion.equals("Resta")){// Condicion para la segunda opcion del menu.
            System.out.print("El resultado de la resta es: "+ _calculadora.Resta(valorA,valorB));

        }else if (Opcion.equals("Multiplicaion")){//Condicion para la Tercera opcion del menu.
            System.out.print("El resultado de la multiplicacion es: " + _calculadora.Multiplicacion(valorA,valorB));

        }else if (Opcion.equals("Division")){
            System.out.print("El resultado de la division es: "  + _calculadora.Division(valorA,valorB));
    }
}
    }
