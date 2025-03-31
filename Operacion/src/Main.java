import java.util.Scanner;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println(" 1.-Suma\n 2.-Resta\n 3.-Multiplicacion\n 4.-Division\n Ingresar la opcion deseada: ");
        int Opcion= sc.nextInt();
        Calculadora _calculadora = new Calculadora();
        double valorA;
        double valorB;

        System.out.println("Ingresa el primer numero: ");
        valorA = sc.nextDouble();
        System.out.println("Ingresa el primer numero: ");
        valorB = sc.nextDouble();
        switch(Opcion){
            case 1:


                System.out.print("El resultado de la Suma es: " + _calculadora.Suma(valorA,valorB));
                break;
            case 2:

                System.out.print("El resultado de la Resta es: " + _calculadora.Resta(valorA,valorB));
                break;
            case 3:

                System.out.print("El resultado de la Multiplicacion es: " + _calculadora.Multiplicacion(valorA,valorB));
                break;
            case 4:
                System.out.print("El resultado de la Division es: " + _calculadora.Division(valorA,valorB));
                break;

            default: System.out.print("opcion no valida.");
        }


}

    }
