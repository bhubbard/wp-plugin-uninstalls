#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featuredbox_settings'
wp option delete 'featuredbox_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featuredbox_meta_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featuredbox_meta_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featuredbox_meta_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featuredbox_meta_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featuredbox_meta_image_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featuredbox_meta_image_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featuredbox_meta_image_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featuredbox_meta_image_class'"
