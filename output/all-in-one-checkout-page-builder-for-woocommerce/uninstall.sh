#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caf_fa_icons'
wp option delete 'trusty_active_template'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_checkout_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trusty_checkout_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trusty_checkout_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trusty_checkout_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trusty_checkout_data'"
