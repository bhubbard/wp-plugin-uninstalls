#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sog_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_post_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_site_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_site_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_site_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_site_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sog_page_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sog_page_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sog_page_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sog_page_disable'"
