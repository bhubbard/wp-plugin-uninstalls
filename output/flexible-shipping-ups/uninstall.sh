#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_flexible_shipping_ups_settings'
wp option delete 'debug_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_default_country'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'wpdesk_tracker_agree'
wp option delete 'wpdesk_tracker_last_send'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_file_download_method'
wp option delete 'woocommerce_downloads_require_login'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'woocommerce_tracker_ua'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugin_activation_%'"
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_num_decimals'

# Clear Cron Jobs
wp cron event delete 'wpdesk_tracker_send_event'
wp cron event delete 'wc_connect_fetch_service_schemas'

