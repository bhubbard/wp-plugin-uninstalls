#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplegam_option'
wp option delete 'simplegam_settings'
wp option delete 'simplegam_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_block_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_block_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_block_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_block_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size'"
