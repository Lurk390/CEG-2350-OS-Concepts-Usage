public class Sum {
    // Recursive sum of digits
    public static long sumDigits2(long n){
        // Add first two digits and recurse until everything is summed
        if (n < 10) {
            return n;
        } else {
            return sumDigits2(n % 10 + sumDigits2(n / 10));
        }
    }
}
