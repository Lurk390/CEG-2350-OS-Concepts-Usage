public class Sum {
    // Recursive sum of digits
    public static long sumDigits(long n){
        // Add first two digits and recurse until everything is summed
        if (n < 10) {
            return n;
        } else {
            return sumDigits(n % 10 + sumDigits(n / 10));
        }
    }
}
