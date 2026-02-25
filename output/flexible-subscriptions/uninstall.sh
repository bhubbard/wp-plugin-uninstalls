#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_woocommerce_payments_settings'
wp option delete 'wpdesk_notice_dismiss_flexible-subscriptions-failed-payment-request-notice'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_enable_order_comments'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fsub_payment_request_error_%' OR option_name LIKE '_site_transient_fsub_payment_request_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fsb_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fsb_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fsb_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fsb_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
