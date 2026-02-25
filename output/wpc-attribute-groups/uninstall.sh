#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcag_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcag_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcag_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcag_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcag_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcag_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcag_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcag_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcag_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcag_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcag_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcag_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcag_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcag_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcag_apply_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcag_apply_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcag_apply_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcag_apply_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcag_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcag_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcag_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcag_exclude'"
