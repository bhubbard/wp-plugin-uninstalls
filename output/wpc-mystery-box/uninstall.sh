#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcmb_settings'
wp option delete 'wpcmb_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcmb_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmb_assortments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmb_assortments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmb_assortments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmb_assortments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmb_custom_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmb_custom_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmb_custom_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmb_custom_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmb_before_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmb_before_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmb_before_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmb_before_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcmb_after_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcmb_after_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcmb_after_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcmb_after_text'"
