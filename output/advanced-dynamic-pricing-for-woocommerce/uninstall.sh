#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_subscriptions_is_active'
wp option delete 'woocommerce_currency'
wp option delete 'woosb_settings'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_price_display_suffix'

# Delete Transients
wp transient delete 'import-result'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wdp_geoip_%' OR option_name LIKE '_site_transient_wdp_geoip_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_adp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_adp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_adp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_adp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
