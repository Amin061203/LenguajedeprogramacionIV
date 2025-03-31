public class Calculadora {
    public double resultado;
    public double valorA;
    public double valorB;


    public double Suma(double _valorA, double _valorB) {
        valorA = _valorA;
        valorB = _valorB;
        resultado = valorA + valorB;
        return resultado;
    }

    public double Resta(double _valorA, double _valorB) {
        valorA = _valorA;
        valorB = _valorB;
        resultado = valorA - valorB;
        return resultado;
    }

    public double Multiplicacion(double _valorA, double _valorB) {
        valorA = _valorA;
        valorB = _valorB;
        resultado = valorA * valorB;
        return resultado;
    }

    public double Division(double _valorA, double _valorB) {
        valorA = _valorA;
        valorB = _valorB;
        resultado = valorA / valorB;
        return resultado;
    }

}