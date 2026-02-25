#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcshopping_cart_settings'
wp option delete 'qcshopping_general_settings'
wp option delete 'qcshopping_layout_settings'
wp option delete 'qcshopping_toggle_settings'
wp option delete 'qcshopping_variation_popup_settings'
wp option delete '__qcshopping_pro_license_info'
wp option delete 'qcshopping_checkout_settings'
wp option delete 'qcshopping_installation_time'
wp option delete 'qcshopping_version'

# Delete Transients
wp transient delete 'qcshopping_activate_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
