#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smartaltfixer_status_%' OR option_name LIKE '_site_transient_smartaltfixer_status_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartaltfixer_alt_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartaltfixer_alt_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartaltfixer_alt_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartaltfixer_alt_source'"
