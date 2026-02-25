#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'payphone_g_btn_version'
wp option delete 'pp_woo_enabled'
wp option delete 'woocommerce_payphone_settings'
wp option delete 'pp_woo_logoImageUrl'
wp option delete 'pp_woo_paymentAction'
wp option delete 'pp_woo_subtotalMismatchBehavior'
wp option delete 'pp_woo_environment'
wp option delete 'pp_woo_button_size'
wp option delete 'pp_woo_blockEChecks'
wp option delete 'pp_woo_requireBillingAddress'
wp option delete 'pp_woo_logging_enabled'
wp option delete 'payphone_g_btn_bootstrap_warning_message'
wp option delete 'payphone_g_btn_bootstrap_warning_message_dismissed'

# Clear Cron Jobs
wp cron event delete 'woocommerce_cancel_unpaid_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_tx_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_tx_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_tx_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_tx_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payphone_tx_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payphone_tx_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payphone_tx_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payphone_tx_id'"
