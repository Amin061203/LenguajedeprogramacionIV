import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Calculadora _calculadora = new Calculadora();

        System.out.println("1.- Realizar Suma\n2.- Realizar Resta\n3.- Realizar Multiplicación\n4.- División");
        System.out.print("Ingresar la opción deseada: ");

        String opcion = sc.nextLine();
        double valorA = 0, valorB = 0;

        try {
            System.out.print("Ingresa el primer número: ");
            valorA = sc.nextDouble();
            System.out.print("Ingresa el segundo número: ");
            valorB = sc.nextDouble();

            if (opcion.equals("Suma")) {
                System.out.println("El resultado de la suma es: " + _calculadora.Suma(valorA, valorB));
            } else if (opcion.equals("Resta")) {
                System.out.println("El resultado de la resta es: " + _calculadora.Resta(valorA, valorB));
            } else if (opcion.equals("Multiplicacion")) {
                System.out.println("El resultado de la multiplicación es: " + _calculadora.Multiplicacion(valorA, valorB));
            } else if (opcion.equals("Division")) {
                if (valorB == 0) {
                    throw new ArithmeticException("No se puede dividir entre cero.");
                }
                System.out.println("El resultado de la división es: " + _calculadora.Division(valorA, valorB));
            } else {
                System.out.println("Opción no válida.");
            }
        } catch (java.util.InputMismatchException e) {
            System.out.println("Error: Debes ingresar un número válido.");
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Ocurrió un error inesperado: " + e.getMessage());
        } finally {
            sc.close();
            System.out.println("Fin del programa.");
        }
    }
}
