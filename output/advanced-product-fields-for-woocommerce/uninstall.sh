#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wapf_add_to_cart_text'
wp option delete 'wapf_settings_show_in_cart'
wp option delete 'wapf_settings_show_in_checkout'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapf_fieldgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapf_fieldgroup'"
