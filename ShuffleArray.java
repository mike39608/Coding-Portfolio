public class ShuffleArray {
    public static int[] shuffle(int[] nums, int n) {
    
      int[] temp= new int[2*n];
      int i=0;
      int j=n;
      
      for (int k=0; k< 2*n; k+=2){ 
         temp[k]= nums[i];
         temp[k+1]=nums[j];
         i++;
         j++;            
      }
      return temp;
    
        
    }
    
       
       
    public static void main(String[] args) {
 
         int[] result = shuffle(new int[]{2,5,1,3,4,7},3);
       
         for (int i=0; i< result.length; i++){ 
            System.out.print(result[i]+ " ");
            
         }
      
    
    
    }
}