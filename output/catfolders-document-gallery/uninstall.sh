#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_generated_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_generated_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_generated_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_generated_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_download_count'"
