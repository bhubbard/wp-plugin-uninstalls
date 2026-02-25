#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'etd_defined_shortcodes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode_value'"
