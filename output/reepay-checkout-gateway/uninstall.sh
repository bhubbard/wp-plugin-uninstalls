#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'reepay_csv_data_migration_mobilepay_to_vipps'
wp option delete 'woocommerce_reepay_checkout_settings'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_reepay_webhook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_reepay_version'

# Delete Transients
wp transient delete 'reepay_api_action_error'
wp transient delete 'reepay_api_action_success'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_reepay_order_complete_should_settle_%' OR option_name LIKE '_site_transient_reepay_order_complete_should_settle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_reepay_invoice_%' OR option_name LIKE '_site_transient_reepay_invoice_%'"
wp transient delete 'reepay_mobilepay_gateway_settings_saved_notice'
wp transient delete 'reepay_mobilepay_subscriptions_gateway_settings_saved_notice'
wp transient delete 'gateways_reepay'
wp transient delete 'reepay_webhook_settings_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reepay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reepay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reepay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reepay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reepay_enable_age_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reepay_enable_age_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reepay_enable_age_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reepay_enable_age_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reepay_minimum_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reepay_minimum_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reepay_minimum_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reepay_minimum_age'"
