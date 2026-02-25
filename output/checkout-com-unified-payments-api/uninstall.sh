#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_checkout_com_cards_settings'
wp option delete 'woocommerce_wc_checkout_com_flow_settings'
wp option delete 'woocommerce_wc_checkout_com_alternative_payments_settings'
wp option delete 'woocommerce_wc_checkout_com_google_pay_settings'
wp option delete 'woocommerce_wc_checkout_com_apple_pay_settings'
wp option delete 'woocommerce_wc_checkout_com_paypal_settings'
wp option delete 'rewrite_rules'
wp option delete 'checkoutcom_blocks_notice_dismissed'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'cko_log_level'
wp option delete 'cko_log_max_size_mb'
wp option delete 'cko_log_max_files'
wp option delete 'cko_log_retention_days'
wp option delete 'cko_performance_logging'
wp option delete 'cko_async_logging'
wp option delete 'cko_log_buffer_size'
wp option delete 'woocommerce_checkout_page_id'

# Delete Transients
wp transient delete 'cko_last_log_cleanup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cko_validation_email_%' OR option_name LIKE '_site_transient_cko_validation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cko_validation_address_%' OR option_name LIKE '_site_transient_cko_validation_address_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cko_flow_incomplete_order_notice_%' OR option_name LIKE '_site_transient_cko_flow_incomplete_order_notice_%'"

# Clear Cron Jobs
wp cron event delete 'cko_log_cleanup'
wp cron event delete 'cko_cleanup_old_webhooks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
