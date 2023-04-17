package np.com.esewa.learn.bloggingsite.posts.dao;

import np.com.esewa.learn.bloggingsite.posts.entities.Post;

import java.util.List;

public interface PostDao {
    boolean createPost(Post post);
    List<Post> getAllPosts();
    Post getPostById(int postId);
    boolean editPost(int postId);
    boolean deletePost(int postId);
}
