#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluff_before_loop'
wp option delete 'fluff_in_loop'
wp option delete 'fluff_after_loop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gallery_order'"
wp option delete 'fluff_scripts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
