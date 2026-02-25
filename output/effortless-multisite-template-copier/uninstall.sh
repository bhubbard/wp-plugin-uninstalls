#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_template_cache_%' OR option_name LIKE '_site_transient_wp_template_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_block_template_cache_%' OR option_name LIKE '_site_transient_block_template_cache_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_theme'"
