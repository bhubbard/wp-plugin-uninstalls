#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'gift-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brand_instagram-%' OR option_name LIKE '_site_transient_brand_instagram-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_url'"
