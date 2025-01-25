

import java.util.Scanner;
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingresa el primer numero");
        int num1 = sc . nextInt();
        System.out.print("Ingresa el Segundo numero");
        int num2 = sc . nextInt();
        System.out.print("Ingresa el tercer numero");
        int num3 = sc . nextInt();
        int resultado = num1*num2*num3;
        System.out.print("El resultado de la multiplicacion es: " + resultado);
        sc.close();
}
    }
