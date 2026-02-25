#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psmfr_settings'
wp option delete 'psmfr_current_version'
wp option delete 'psmwmc-licenses'
wp option delete 'psmwoo_mc_currencies'
wp option delete 'woocommerce_date_type'
wp option delete 'woocommerce_currency'
wp option delete 'psmmc-string-translation'
wp option delete 'psmwoo_mc_checkout_currencies'
wp option delete 'psmwoo_mc_checkout_options'
wp option delete 'psmwoo_mc_advanced_settings'
wp option delete 'psmwoo_mc_display_options'
wp option delete 'psmwoo_mc_auto_select_country_currencies'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'psmwoo_mc_current_version'

# Delete Transients
wp transient delete 'psmfr_installing'
wp transient delete 'product-transient-version'
wp transient delete 'psmwoo_mc_installing'

