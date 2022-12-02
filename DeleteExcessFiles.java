import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import javax.imageio.ImageIO;

public final class DeleteExcessFiles {
    public static void main (String[] args) {
        File imagesFolder = new File("C:\\Users\\MANIS\\Documents\\GitHub\\Text-Blurrer\\images");
        for (final File subImageFolder : imagesFolder.listFiles()) {
            // System.out.println(subImageFolder.getName());
            String fname = subImageFolder.getName();
			for (final File imageFile : subImageFolder.listFiles()) {
                // if(fname.equals("1")) {
                //     if (!(imageFile.getName().contains(".1") || imageFile.getName().contains(".0"))) {
                //         System.out.println(imageFile.getName());
                //         System.out.println("true");
                //         imageFile.delete();
                //     }
                // } else
                //  if(fname.equals("3")) {
                //     if (!(imageFile.getName().contains(".3") || imageFile.getName().contains(".0"))) {
                //         System.out.println(imageFile.getName());
                //         System.out.println("true");
                //         imageFile.delete();
                //     }
                // }
                if(fname.equals("4")) {
                    if (!(imageFile.getName().contains(".0"))) {
                        System.out.println(imageFile.getName());
                        System.out.println("true");
                        imageFile.delete();
                    }
                }
            }
        }
    }
}