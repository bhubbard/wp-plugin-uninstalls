#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_customer_address'
wp option delete 'wc_price_based_country_caching_support'
wp option delete 'wc_price_based_country_dbip_prefix'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_maxmind_geolocation_settings'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'wc_price_based_currency_format'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_price_based_country_based_on'
wp option delete 'wc_price_based_country_shipping_exchange_rate'
wp option delete 'wc_price_based_country_test_mode'
wp option delete 'wc_price_based_country_test_country'
wp option delete 'wc_price_based_country_exchange_rate_api'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'wc_price_based_country_version'
wp option delete '_oga_wppbc_countries_groups'
wp option delete 'wc_price_based_country_regions'
wp option delete 'wc_price_based_country_gla_integration'
wp option delete 'active_sitewide_plugins'
wp option delete '_wcpay_feature_customer_multi_currency'
wp option delete 'wcpay_multi_currency_enabled_currencies'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'wc_price_based_country_debug_mode'
wp option delete 'wc_price_based_country_debug_ip'
wp option delete 'wc_price_based_country_update_geoip'
wp option delete '_oga_wppbc_apiurl'
wp option delete '_oga_wppbc_api_country_field'
wp option delete 'wc_price_based_shipping_conversion'
wp option delete 'wc_price_based_country_hide_ads'

# Delete Transients
wp transient delete 'wcpbc_updated_geoip'
wp transient delete 'wcpbc_products_onsale'
wp transient delete 'update_plugins'
wp transient delete 'wcpbc_notify_admin_deprecated_pro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_site_transient_wc_var_prices_%'"

# Clear Cron Jobs
wp cron event delete 'woocommerce_geoip_updater'
wp cron event delete 'wcpbc_update_geoip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zone_pricing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_price_based_country_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_price_based_country_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_price_based_country_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_price_based_country_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpbc_pricing_zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpbc_pricing_zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpbc_pricing_zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpbc_pricing_zone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpbc_base_exchange_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpbc_base_exchange_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpbc_base_exchange_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpbc_base_exchange_rate'"
