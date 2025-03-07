# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_241_124_194_306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comment_likes', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'comment_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['comment_id'], name: 'index_comment_likes_on_comment_id'
    t.index ['user_id'], name: 'index_comment_likes_on_user_id'
  end

  create_table 'comments', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'parent_comment_id'
    t.text 'text', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['parent_comment_id'], name: 'index_comments_on_parent_comment_id'
    t.index ['user_id'], name: 'index_comments_on_user_id'
  end

  create_table 'mbti_types', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.integer 'mbti_type', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'visibility', default: 0, null: false
    t.index ['user_id'], name: 'index_mbti_types_on_user_id', unique: true
  end

  create_table 'media_works', force: :cascade do |t|
    t.integer 'media_type', null: false
    t.string 'title', null: false
    t.integer 'genres'
    t.string 'image', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'post_id', null: false
    t.index ['post_id'], name: 'index_media_works_on_post_id'
  end

  create_table 'notifications', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'post_id', null: false
    t.bigint 'comment_id', null: false
    t.bigint 'related_for_id', null: false
    t.integer 'notification_type', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['comment_id'], name: 'index_notifications_on_comment_id'
    t.index ['post_id'], name: 'index_notifications_on_post_id'
    t.index ['user_id'], name: 'index_notifications_on_user_id'
  end

  create_table 'ogp_images', force: :cascade do |t|
    t.bigint 'post_id', null: false
    t.string 'image_url', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['post_id'], name: 'index_ogp_images_on_post_id'
  end

  create_table 'post_likes', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'post_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['post_id'], name: 'index_post_likes_on_post_id'
    t.index ['user_id'], name: 'index_post_likes_on_user_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_posts_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'clerk_id', null: false
    t.string 'username', null: false
    t.string 'avatar_url', null: false
  end

  add_foreign_key 'comment_likes', 'comments'
  add_foreign_key 'comment_likes', 'users'
  add_foreign_key 'comments', 'comments', column: 'parent_comment_id'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'mbti_types', 'users'
  add_foreign_key 'media_works', 'posts'
  add_foreign_key 'notifications', 'comments'
  add_foreign_key 'notifications', 'posts'
  add_foreign_key 'notifications', 'users'
  add_foreign_key 'ogp_images', 'posts'
  add_foreign_key 'post_likes', 'posts'
  add_foreign_key 'post_likes', 'users'
  add_foreign_key 'posts', 'users'
end
