# db design

## prototypes table

### assosiation
   prototypes belongs to user
   prototype has many comments
   prototype has many images
   prototype has many likes
### column
- id            :integer
- user_id       :integer
- catch_copy    :text
- concept       :text

## users table
### assosiation
   user has many prototypes
   user has many comments
   user has many likes
### column
- id            :integer
- name          :string
- email         :string
- password      :string
- avatar        :string
- member        :string
- profile       :text
- works         :text

## comments table
### assosiation
   comments belongs to user
   comments belongs to prototype
### column
- id            :integer
- user_id       :integer
- prototype_id  :integer
- comment       :text

## images table
### assosiation
   images belongs to prototype
### column
- id            :integer
- prototype_id  :integer
- file          :string
- status        :integer

## Like table
### assosiation
   likes belongs to prototype
   likes belongs to user
### column
- id            :integer
- prototype_id  :integer
- user_id       :integer
