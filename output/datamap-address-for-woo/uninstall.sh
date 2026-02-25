#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmaw_datamap_address_woo_api_password'
wp option delete 'dmaw_datamap_address_woo_url'
wp option delete 'dmaw_datamap_address_woo_api_username'
wp option delete 'dmaw_datamap_access_token'
wp option delete 'dmaw_datamap_access_token_expiry'
wp option delete 'dmaw_datamap_refresh_token'
wp option delete 'dmaw_datamap_refresh_token_expiry'
wp option delete 'dmaw_datamap_address_woo_shipping_country'
wp option delete 'dmaw_datamap_address_woo_shipping_address'
wp option delete 'dmaw_datamap_address_woo_shipping_city'
wp option delete 'dmaw_datamap_address_woo_shipping_postcode'
wp option delete 'dmaw_datamap_address_woo_shipping_state'
wp option delete 'dmaw_datamap_address_woo_billing_address'
wp option delete 'dmaw_datamap_address_woo_billing_city'
wp option delete 'dmaw_datamap_address_woo_billing_postcode'
wp option delete 'dmaw_datamap_address_woo_billing_state'
wp option delete 'dmaw_datamap_address_woo_api_key'
wp option delete 'dmaw_datamap_address_woo_enable_extension'
wp option delete 'dmaw_datamap_address_woo_country_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_billing/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_billing/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_billing/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_billing/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipping/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipping/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipping/dmaw_datamap_address_woo/dcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipping/dmaw_datamap_address_woo/dcode'"
