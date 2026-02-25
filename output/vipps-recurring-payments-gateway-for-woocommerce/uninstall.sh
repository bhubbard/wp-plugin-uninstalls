#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_kco_settings'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_vipps_recurring_checkout_page_id'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_vipps_recurring_settings'
wp option delete 'woo-vipps-recurring-version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cancel_subscription_lock%' OR option_name LIKE '_site_transient_cancel_subscription_lock%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_maybe_cancel_due_charge_lock%' OR option_name LIKE '_site_transient_maybe_cancel_due_charge_lock%'"
wp transient delete '_vipps_recurring_token'

# Clear Cron Jobs
wp cron event delete 'woocommerce_vipps_recurring_delete_pending_order'
wp cron event delete 'woocommerce_vipps_recurring_check_order_statuses'
wp cron event delete 'woocommerce_vipps_recurring_check_gateway_change_request'
wp cron event delete 'woocommerce_vipps_recurring_update_subscription_details_in_app'
wp cron event delete 'woocommerce_vipps_recurring_check_orders_marked_for_deletion'

