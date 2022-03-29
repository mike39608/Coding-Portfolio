public class SwapMultidimensional {


    public static void swapRows(int[][] strings, int a, int b) {
        int[] tmp = strings[a];
        strings[a] = strings[b];
        strings[b] = tmp;
     
    }
    
    public static void swapCols(int[][] strings, int a, int b){
    
    for(int i = 0; i < strings.length; i++){
        int tmp = strings[i][a];
        strings[i][a] = strings[i][b];
        strings[i][b] = tmp;
    
    }
    
    }

    public static void print2D(int[][] array) {
        for (int row = 0; row < array.length; row++) {
            for (int col = 0; col < array[row].length - 1; col++) {
                System.out.print(array[row][col] + " ");
            }
            System.out.println(array[row][array[row].length - 1]);
        }
    }

    public static void main(String[] args) {
        int[][] example1 = new int[][]{ new int[]{0, 1, 2},
                                        new int[]{3, 4, 5},
                                        new int[]{6, 7, 8} };
        int[][] example2 = new int[][]{ new int[]{9, 8, 7},
                                        new int[]{6, 5, 4},
                                        new int[]{3, 2, 1} };
        System.out.println("Before swapping rows 0 and 2:");
        print2D(example1);
        swapRows(example1, 0, 2);
        System.out.println("After swapping rows 0 and 2:");
        print2D(example1);

        System.out.println("\nBefore swapping columns 1 and 2:");
        print2D(example2);
        swapCols(example2, 1, 2);
        System.out.println("After swapping columns 1 and 2:");
        print2D(example2);
    }
}
