#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_smugmug_version'
wp option delete 'wp_smugmug_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_smugmug_%'"
wp option delete 'wp_smugmug_thumbsize'
wp option delete 'wp_smugmug_size'
wp option delete 'wp_smugmug_imagecount'
wp option delete 'wp_smugmug_start'
wp option delete 'wp_smugmug_num'
wp option delete 'wp_smugmug_link'
wp option delete 'wp_smugmug_titletag'
wp option delete 'wp_smugmug_captions'
wp option delete 'wp_smugmug_sort'
wp option delete 'wp_smugmug_lightbox'
wp option delete 'wp_smugmug_smugmug'
wp option delete 'wp_smugmug_window'
wp option delete 'wp_smugmug_css'
wp option delete 'wp_smugmug_css_ie'
wp option delete 'wp_smugmug_title'
wp option delete 'wp_smugmug_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smugmug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smugmug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smugmug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smugmug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smugmug-options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smugmug-options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smugmug-options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smugmug-options'"
