package np.com.esewa.learn.bloggingsite.utilities;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Helper {
	public static boolean deletePhoto(String path) { //method to delete the default.png 
		boolean test = false;
		//deleting file
		try {
			File profilePic = new File(path);
			test=profilePic.delete(); // as delete returns true if file deleted successfully..
		}
		catch(Exception e){
		e.printStackTrace();
		System.out.print("Error happened file deleting couldnt be done");
		test = false;
		}
		return test;
		}
	
	// method to save the image file selected to img/profImg 
	public static boolean savePhoto(InputStream is, String path) { //input stream to take the file input
		boolean test = false;
		try {
			byte b[] = new byte[is.available()]; // to read
			is.read(b);
			
			FileOutputStream fos = new FileOutputStream(path); //to write or o/p the file
			fos.write(b);
			fos.flush();
			fos.close();
			test = true;
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.print("Error on saving selected file..");
			test = false;
		}
		return test;
	}

}
