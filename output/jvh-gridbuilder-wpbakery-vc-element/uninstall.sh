#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'jvh_all_terms'
wp transient delete 'jvh_all_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
