package np.com.esewa.learn.bloggingsite.posts.dao;

import np.com.esewa.learn.bloggingsite.posts.entities.Post;

import java.sql.Connection;
import java.util.List;

public class PostDaoImpl implements PostDao {
    private final Connection connection;
    public PostDaoImpl(Connection connection) {
        this.connection = connection;
    }

    public boolean createPost(Post post){
        return false;
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
