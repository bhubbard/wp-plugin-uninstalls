#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thpeddup_pro_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thpeddup_enable_checkout_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thpeddup_enable_checkout_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thpeddup_enable_checkout_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thpeddup_enable_checkout_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thpeddup_upcross_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thpeddup_upcross_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thpeddup_upcross_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thpeddup_upcross_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thpeddup_enable_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thpeddup_enable_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thpeddup_enable_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thpeddup_enable_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thpeddup_popup_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thpeddup_popup_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thpeddup_popup_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thpeddup_popup_heading'"
