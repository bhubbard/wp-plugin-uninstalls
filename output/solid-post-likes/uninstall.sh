#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_oacs_spl_likes_for_comments_setting'
wp option delete '_oacs_spl_hook_post_hook'
wp option delete '_oacs_spl_hook_woo_hook'
wp option delete '_oacs_spl_cache_support'
wp option delete '_oacs_spl_deinstall_delete'
wp option delete 'carbon_custom_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_user_comment_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_user_comment_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_user_comment_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_user_comment_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_user_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_user_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_user_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_user_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_user_comment_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_user_comment_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_user_comment_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_user_comment_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_user_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_user_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_user_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_user_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_comment_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_comment_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_comment_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_comment_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_post_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_post_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_post_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_post_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_comment_like_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_comment_like_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_comment_like_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_comment_like_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oacs_spl_comment_post_like_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oacs_spl_comment_post_like_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oacs_spl_comment_post_like_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oacs_spl_comment_post_like_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
