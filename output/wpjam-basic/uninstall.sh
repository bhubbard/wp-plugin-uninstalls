#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'wp_attachment_pages_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'disallowed_keys'

# Delete Transients
wp transient delete 'wpjam_basic_verify'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpjam_weixin_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpjam_weixin_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpjam_weixin_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpjam_weixin_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpjam_weixin_user_failed_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpjam_weixin_user_failed_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpjam_weixin_user_failed_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpjam_weixin_user_failed_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatarurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatarurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatarurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatarurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'posts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'posts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'posts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'posts_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'seo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'seo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'seo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'seo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toc_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toc_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toc_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toc_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toc_depth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toc_depth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toc_depth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toc_depth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_url'"
