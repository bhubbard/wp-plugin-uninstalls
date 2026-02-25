#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cks_rui_options'
wp option delete 'cks_rui_version'
wp option delete 'roi_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_image_safe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_image_safe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_image_safe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_image_safe'"
