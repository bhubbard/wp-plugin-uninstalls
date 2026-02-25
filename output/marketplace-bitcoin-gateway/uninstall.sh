#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmp_payment_bitcoin_gateway_settings_name'
wp option delete 'WCMp_Bitcoin_Gateway_installed'
wp option delete 'wcmp_payment_settings_name'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_bitoin_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_bitoin_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_bitoin_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_bitoin_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_pv_shipped'"
