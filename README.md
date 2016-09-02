# db design

## Tweet table
### assosiation
   tweets belongs to user
   tweet has many comments
   tweet has many images
   tweet has many likes
### column
-id            :integer
-catch_copy    :text
-concept       :text
-created_at    :date
-updated_at    :date

## User table
### assosiation
   user has many tweets
   user has many comments
   user has many likes
### column
-id            :integer
-name          :string
-email         :string
-password      :string
-avatar        :string
-member        :string
-profile       :text
-works         :text
-created_at    :date
-updated_at    :date

## Comment table
### assosiation
   comments belongs to user
   comments belongs to tweet
### column
-id            :integer
-user_id       :integer
-comment       :text
-created_at    :integer
-updated_at    :integer

## Image table
### assosiation
   images belongs to tweet
### column
-id            :integer
-tweet_id      :integer
-image         :string

## Like table
### assosiation
   likes belongs to tweet
   likes belongs to user
### column
-id            :integer
-tweet_id      :integer
-user_id       :integer
