#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'montypay_recurring_schedules'
wp option delete 'woocommerce_montypay_hosted_payment_settings'
wp option delete 'woocommerce_montypay_hosted_apple_pay_gateway_settings'
wp option delete 'woocommerce_montypay_s2s_payment_settings'
wp option delete 'woocommerce_montypay_stripe_payment_settings'
wp option delete 'woocommerce_montypay_wallets_payment_settings'

# Delete Transients
wp transient delete 'wc_admin_dashboard_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_montypay_recurring_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_montypay_recurring_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_montypay_recurring_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_montypay_recurring_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_montypay_recurring_schedule_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_montypay_recurring_schedule_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_montypay_recurring_schedule_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_montypay_recurring_schedule_id'"
