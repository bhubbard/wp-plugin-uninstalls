#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usp_options'
wp option delete 'user-submitted-posts-dismiss-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_submit_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_submit_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_submit_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_submit_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_submit_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_submit_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_submit_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_submit_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_submit_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_submit_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_submit_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_submit_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_submit_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_submit_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_submit_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_submit_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_submit_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_submit_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_submit_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_submit_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usp-post-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usp-post-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usp-post-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usp-post-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usp-post-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usp-post-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usp-post-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usp-post-time'"
