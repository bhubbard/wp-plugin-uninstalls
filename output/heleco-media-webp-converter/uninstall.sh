#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'heleco_webp_supported'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_heleco_webp_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_heleco_webp_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_heleco_webp_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_heleco_webp_conversion'"
