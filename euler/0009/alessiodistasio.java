import java.lang.Math;

class Pythagorean {
    public static void main(String[] args) {
        boolean found = false;
        int a = 0, b = 0;
        double c = 0;
        while (!found) {
            a++;
            for (b = 0; b < a; b++) {
                while (a > b) {
                    c = Math.sqrt(a * a + b * b);
                    if (a + b + c == 1000) {
                        System.out.println("a:" + a + " b:" + b + " c:" + c);
                        found = true;
                    }
                    break;
                }
            }
        }
    }
}
