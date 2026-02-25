#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_analytics_code'
wp option delete 'google_webmaster_code'
wp option delete 'pinterest_code'
wp option delete 'bing_webmaster_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_title_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_title_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_title_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_title_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'og_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'og_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'og_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'og_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'og_image'"
