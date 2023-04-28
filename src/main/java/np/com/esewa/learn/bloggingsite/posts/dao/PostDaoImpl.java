package np.com.esewa.learn.bloggingsite.posts.dao;

import np.com.esewa.learn.bloggingsite.posts.entities.Post;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class PostDaoImpl implements PostDao {
    private final Connection connection;
    public PostDaoImpl(Connection connection) {
        this.connection = connection;
    }

    public boolean createPost(Post post){
        boolean temp=false;
        try {
            String query="insert into posts (title, category, body, author) values (?,?,?,?,?)";
            PreparedStatement preparedStatement= this.connection.prepareStatement(query);
            preparedStatement.setString(1,post.getPostTitle());
            preparedStatement.setString(2,post.getPostCategory());
            preparedStatement.setString(3,post.getPostBody());
            preparedStatement.setString(4,post.getAuthor());

            preparedStatement.executeUpdate();
            temp=true;
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return temp;
    }
    public List<Post> getAllPosts(){
        return null;
    }
    public Post getPostById(int postId){
        return null;
    }
    public boolean editPost(int postId){
        return false;
    }
    public boolean deletePost(int postId){
        return false;
    }
}
