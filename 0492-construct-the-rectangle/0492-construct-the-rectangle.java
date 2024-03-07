class Solution {
    public int[] constructRectangle(int area) {
        int i=0, a=area;
        int l=0, w=0;
int[] r = new int[2]; 
        while(i<=a){
            long mult = i*a;

            if(mult == area){
                l= a--;
                w= i++;
            } else if (mult > area){
                a--;
            } else {
                i++;
            }
        }
        r[0]=l;
        r[1]=w;
        return r;
    } 
    
}