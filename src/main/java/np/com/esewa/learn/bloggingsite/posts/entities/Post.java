package np.com.esewa.learn.bloggingsite.posts.entities;

import java.time.OffsetDateTime;

/*
* @author SatyaRajAwasth1
* */
public class Post {
    private int postId;
    private String postTitle;
    private String postBody;
    private String author;
    private String postCategory;
    private String [] postTags;
    private OffsetDateTime postedDate;

    public String getPostCategory() {
        return postCategory;
    }

    public void setPostCategory(String postCategory) {
        this.postCategory = postCategory;
    }

    public String[] getPostTags() {
        return postTags;
    }

    public void setPostTags(String[] postTags) {
        this.postTags = postTags;
    }

    //All args constructor
    public Post(int postId, String postTitle,String postCategory, String postBody, String author, OffsetDateTime postedDate) {
        this.postId = postId;
        this.postTitle = postTitle;
        this.postCategory = postCategory;
        this.postBody = postBody;
        this.author = author;
        this.postedDate = postedDate;
    }

    // args constructor without postId
    public Post(String postTitle, String postCategory, String postBody, String author, String [] postTags,OffsetDateTime postedDate) {
        this.postTitle = postTitle;
        this.postCategory = postCategory;
        this.postBody = postBody;
        this.author = author;
        this.postTags = postTags;
    }


    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostBody() {
        return postBody;
    }

    public void setPostBody(String postBody) {
        this.postBody = postBody;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public OffsetDateTime getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(OffsetDateTime postedDate) {
        this.postedDate = postedDate;
    }
}
