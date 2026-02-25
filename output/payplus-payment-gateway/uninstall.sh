#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payplus_invoice_option'
wp option delete 'woocommerce_payplus-payment-gateway_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_payplus-payment-gateway-applepay_settings'
wp option delete 'woocommerce_payplus-payment-gateway-hostedfields_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_payplus_display_embedded_count'
wp option delete 'woocommerce_payplus-payment-gateway-pos-emv_settings'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'payplus-payment-gateway-multipass'
wp option delete 'payplus_create_invoice'
wp option delete 'payplus_db_version'
wp option delete 'settings_payplus_page_error_option'
wp option delete 'error_page_payplus'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'payplus_apple_pay_identifier'
wp option delete 'payplus_clearing_companies'
wp option delete 'payplus_issuers_companies'
wp option delete 'payplus_brands'
wp option delete 'payplus_generate_key_link_dashboard'
wp option delete 'wc_payplus_version'
wp option delete 'wc_payplus_display_maam_count'
wp option delete 'woocommerce_price_num_decimals'

# Delete Transients
wp transient delete 'payplus_plugin_integrity_check_failed'
wp transient delete 'payplus_plugin_integrity_check_success'
wp transient delete 'payplus_admin_notice'
wp transient delete 'payment_ips'

# Clear Cron Jobs
wp cron event delete 'payplus_hourly_cron_job'
wp cron event delete 'payplus_twice_hourly_cron_job'
wp cron event delete 'payplus_invoice_runner_cron_job'
wp cron event delete 'payplus_delayed_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_validated_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_validated_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_validated_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_validated_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payplus_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payplus_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payplus_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payplus_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payplus_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payplus_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payplus_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payplus_transaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payplus_error_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payplus_error_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payplus_error_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payplus_error_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payplus_balance_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payplus_balance_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payplus_balance_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payplus_balance_name'"
