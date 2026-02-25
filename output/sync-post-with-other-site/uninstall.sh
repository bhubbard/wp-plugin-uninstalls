#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sps_plugin'
wp option delete 'sps_version'
wp option delete 'sps_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sps_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sps_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sps_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sps_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sps_featured_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sps_featured_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sps_featured_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sps_featured_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'old_site_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'old_site_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'old_site_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'old_site_url'"
