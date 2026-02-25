#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vpwoo_extra_charge'
wp option delete 'vpwoo_extra_charge_title'
wp option delete 'vpwoo_extra_charge_type'
wp option delete 'vpwoo_extra_charge_amount'
wp option delete 'vpwoo_extra_charge_percentage'
wp option delete 'vpwoo_extra_charge_threshold'
wp option delete 'vpwoo_extra_charge_maximum'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_woo-voguepay-plugin_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
