public class UseSuperSub extends UseSuperBase {
    private int addThis;
    
    public UseSuperSub(long seed, int addAmount) {
        // TODO - write your code below this comment.
        // You'll need to save addAmount in the
        // addThis instance variable, and initialize
        // the super class with super.
        super(seed);
        addThis = addAmount;
        
        
    }

    public int nextInt(int high) {
        // TODO - write your code below this comment.
        // You'll need to call the nextInt method
        // of the superclass, and then add addThis to
        // the result.
        addThis += nextInt(high);
        return addThis;
    }
}
