package np.com.esewa.learn.bloggingsite.entities;

import java.time.OffsetDateTime;

/*
* @author SatyaRajAwasth1
* */
public class Post {
    private int postId;
    private String postTitle;
    private String postBody;
    private String author;
    private OffsetDateTime postedDate;

    //All args constructor
    public Post(int postId, String postTitle, String postBody, String author, OffsetDateTime postedDate) {
        this.postId = postId;
        this.postTitle = postTitle;
        this.postBody = postBody;
        this.author = author;
        this.postedDate = postedDate;
    }

    // args constructor without postId
    public Post(String postTitle, String postBody, String author, OffsetDateTime postedDate) {
        this.postTitle = postTitle;
        this.postBody = postBody;
        this.author = author;
        this.postedDate = postedDate;
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
