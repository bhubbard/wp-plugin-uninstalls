#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_all_currencies_enabled'
wp option delete 'alg_wc_all_currencies_custom_currencies_enabled'
wp option delete 'alg_wc_all_currencies_custom_currencies_codes'
wp option delete 'alg_wc_all_currencies_custom_currencies_names'
wp option delete 'alg_wc_all_currencies_hide_symbol'
wp option delete 'alg_wc_all_currencies_use_code_as_symbol'
wp option delete 'alg_wc_all_currencies_list_country_enabled'
wp option delete 'alg_wc_all_currencies_list_crypto_enabled'
wp option delete 'alg_wc_all_currencies_custom_currencies_total'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_all_currencies_version'
wp option delete 'alg_wc_all_currencies_symbols'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_currencies_pro_currency_%'"

