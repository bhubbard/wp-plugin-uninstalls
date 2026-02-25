#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbswebpressor_webp_quality'
wp option delete 'tbswebpressor_convert_on_upload'
wp option delete 'tbswebpressor_compression_quality'
wp option delete 'tbswebpressor_convert_to_webp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbswebpressor_webp_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbswebpressor_webp_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbswebpressor_webp_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbswebpressor_webp_path'"
