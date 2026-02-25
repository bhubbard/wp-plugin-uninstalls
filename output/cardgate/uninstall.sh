#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cardgate_version'
wp option delete 'is_callback_status_change'
wp option delete 'cgp_version'
wp option delete 'cgp_mode'
wp option delete 'cgp_siteid'
wp option delete 'cgp_hashkey'
wp option delete 'cgp_merchant_id'
wp option delete 'cgp_merchant_api_key'
wp option delete 'cgp_checkoutdisplay'
wp option delete 'woocommerce_default_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges_type'"
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_cardgateafterpay_settings'
wp option delete 'woocommerce_cardgatebancontact_settings'
wp option delete 'woocommerce_cardgatebanktransfer_settings'
wp option delete 'woocommerce_cardgatebillink_settings'
wp option delete 'woocommerce_cardgatebitcoin_settings'
wp option delete 'woocommerce_cardgatecreditcard_settings'
wp option delete 'woocommerce_cardgatecrypto_settings'
wp option delete 'woocommerce_cardgatedirectdebit_settings'
wp option delete 'woocommerce_cardgategiftcard_settings'
wp option delete 'woocommerce_cardgateideal_settings'
wp option delete 'woocommerce_cardgateidealqr_settings'
wp option delete 'woocommerce_cardgateklarna_settings'
wp option delete 'woocommerce_cardgateonlineueberweisen_settings'
wp option delete 'woocommerce_cardgatepaypal_settings'
wp option delete 'woocommerce_cardgatepaysafecard_settings'
wp option delete 'woocommerce_cardgatepaysafecash_settings'
wp option delete 'woocommerce_cardgateprzelewy24_settings'
wp option delete 'woocommerce_cardgatesofortbanking_settings'
wp option delete 'woocommerce_cardgatespraypay_settings'

