#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_force_images_download_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfid_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfid_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfid_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfid_ignore_notice'"
