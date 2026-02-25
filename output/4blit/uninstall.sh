#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_4blit_api_key'
wp option delete 'wp_4blit_default_publish'
wp option delete 'wp_4blit_default_ublish'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_4blit_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_4blit_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_4blit_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_4blit_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_4blit_post_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_4blit_post_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_4blit_post_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_4blit_post_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_4blit_post_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_4blit_post_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_4blit_post_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_4blit_post_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_4blit_post_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_4blit_post_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_4blit_post_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_4blit_post_publish'"
