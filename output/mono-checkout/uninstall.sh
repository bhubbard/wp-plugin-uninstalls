#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mono_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mono_client_callback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mono_client_callback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mono_client_callback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mono_client_callback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mono_client_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mono_client_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mono_client_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mono_client_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mono_deliveryAddressInfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mono_deliveryAddressInfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mono_deliveryAddressInfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mono_deliveryAddressInfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mono_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mono_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mono_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mono_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mono_order_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mono_order_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mono_order_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mono_order_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monocheckout_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monocheckout_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monocheckout_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monocheckout_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monocheckout_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monocheckout_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monocheckout_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monocheckout_shipping_method'"
