#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imalisch_settings_license'
wp option delete 'imalisch_settings_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imalisch_post_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imalisch_post_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imalisch_post_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imalisch_post_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imalisch_post_images_licenses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imalisch_post_images_licenses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imalisch_post_images_licenses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imalisch_post_images_licenses'"
