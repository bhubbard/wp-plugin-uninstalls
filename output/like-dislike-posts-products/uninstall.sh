#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ldppp_enable_likes_plugin'
wp option delete 'ldppp_enable_product_achieve_page'
wp option delete 'ldppp_after_before_achieve_btn'
wp option delete 'ldppp_only_logged_in_rating_users'
wp option delete 'ldppp_auto_display_rating_progressbar'
wp option delete 'ldppp_enable_product_page'
wp option delete 'ldppp_after_before_btn'
wp option delete 'ldppp_display_in_template'
wp option delete 'ldppp_after_before_content'
wp option delete 'ldppp_only_logged_in_users'
wp option delete 'ldppp_hide_likes'
wp option delete 'ldppp_hide_dislikes'
wp option delete 'ldppp_hide_ratings_details'
wp option delete 'ldppp_hide_like_dislike_details'
wp option delete 'ldppp_enable_comments_vote'
wp option delete 'ldppp_count_type'
wp option delete 'ldppp_enable_post_view_read'
wp option delete 'ldppp_likedislike_progress_bar'
wp option delete 'ldppp_ratings_progress_bar'
wp option delete 'ldppp_comments_progress_bar'
wp option delete 'ldppp_auto_display_likedislike_buttons'
wp option delete 'ldppp_auto_display_likedislike_progressbar'
wp option delete 'ldppp_auto_display_rating'
wp option delete 'ldppp_custom_text'
wp option delete 'ldppp_like_color'
wp option delete 'ldppp_dislike_color'
wp option delete 'ldppp_where_want_display'
wp option delete 'ldppp_auto_display_comments'
wp option delete 'ldppp_custom_text_for_comments'
wp option delete 'ldppp_auto_display_progressbar_comments'
wp option delete 'ldppp_auto_display_post_views'
wp option delete 'ldppp_where_want_view_display'
wp option delete 'ldppp_content_read_percentage'
wp option delete 'ldppp_content_read_time'
wp option delete 'ldppp_prevent_multiple_ip'
wp option delete 'ldppp_view_counter_display'
wp option delete 'ldppp_enable_add_to_favorites'
wp option delete 'ldppp_auto_display_favorites'
wp option delete 'ldppp_where_want_add_to_favorites_display'
wp option delete 'ldppp_custom_add_to_favorites'
wp option delete 'ldppp_favourite_color_active'
wp option delete 'ldppp_favourite_color_deactive'
wp option delete 'ldppp_enable_social_share'
wp option delete 'ldppp_auto_display_social_share'
wp option delete 'ldppp_where_want_add_to_social_share_display'
wp option delete 'ldppp_custom_ss_text'
wp option delete 'ldppp_enable_copy_posts'
wp option delete 'ldppp_auto_display_copy_posts'
wp option delete 'ldppp_where_want_add_to_copy_posts_display'
wp option delete 'ldppp_custom_copy_posts_text'
wp option delete 'ldppp_display_admin_like_count'
wp option delete 'ldppp_display_admin_dislike_count'
wp option delete 'ldppp_display_admin_ratings_count'
wp option delete 'ldppp_display_admin_view_count'
wp option delete 'ldppp_enable_admin_comments'
wp option delete 'ldppp_like_dislike_color'
wp option delete 'ldppp_enable_achieve_product_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ldppp_comment_likes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ldppp_comment_likes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ldppp_comment_likes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ldppp_comment_likes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ldppp_comment_dislikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ldppp_comment_dislikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ldppp_comment_dislikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ldppp_comment_dislikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ldppp_comment_voted_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ldppp_comment_voted_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ldppp_comment_voted_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ldppp_comment_voted_users'"
