#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'strabl_valid_uuid'
wp option delete 'woocommerce_strabl_payment_gateway_settings'
wp option delete 'strabl_plugin_data'
wp option delete 'strabl_payment_gateway_merchant_uuid'
wp option delete 'woocommerce_strabl_settings'
wp option delete 'strabl_payment_gateway_css_code'
wp option delete 'strabl_payment_gateway_checkout_css_code'

# Delete Transients
wp transient delete 'strabl_data_last_accessed'
wp transient delete 'strabl_last_fetch_timestamp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fulfilmentStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fulfilmentStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fulfilmentStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fulfilmentStatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paymentStatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paymentStatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paymentStatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paymentStatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orderShortCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orderShortCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orderShortCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orderShortCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customerUuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customerUuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customerUuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customerUuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orderUuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orderUuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orderUuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orderUuid'"
