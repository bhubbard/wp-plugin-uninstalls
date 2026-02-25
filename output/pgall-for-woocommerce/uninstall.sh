#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pafw-gw-%'"
wp option delete 'pafw-smart-review-placeholder'
wp option delete 'woocommerce_enable_reviews'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-agree-to-tac'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pafw_mshop_%'"
wp option delete 'pafw-subscription-allow-change-date'
wp option delete 'pafw-gw-support-cancel-guest-order'
wp option delete 'pafw-gw-support-cancel-unpaid-order'
wp option delete 'pafw-gw-cancel-unpaid-order-days'
wp option delete 'pafw_use_bacs_receipt'
wp option delete 'pafw_bacs_receipt_issue_statuses'
wp option delete 'pafw_bacs_receipt_cancel_statuses'
wp option delete 'pafw-gw-support-exchange'
wp option delete 'pafw-gw-support-return'
wp option delete 'pafw-gw-ex-skip-virtual'
wp option delete 'pafw-gw-ex-terms'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'pafw_db_version'
wp option delete 'pafw-order-status-by-product'
wp option delete 'pafw-order-status-by-category'
wp option delete 'pafw-order-status-by-attributes'
wp option delete 'pafw-auto-transition-by-term'
wp option delete 'pafw-gw-order_status_after_payment_for_virtual'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'pafw-use-woocommerce-blocks'
wp option delete 'pafw-payment-method-by-role'
wp option delete 'pafw-payment-method-by-product'
wp option delete 'pafw-payment-method-by-category'
wp option delete 'pafw-payment-method-by-attributes'
wp option delete 'pafw-payment-method-by-language'
wp option delete 'pafw-payment-method-by-amount'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multiple_purchase'"
wp option delete 'pafw-renewal-failed-period'
wp option delete 'pafw-renewal-failed-notification-sms-template'
wp option delete 'mssms_use_shipping_info'
wp option delete 'mssms_rep_send_no'
wp option delete 'pafw-renewal-failed-notification-alimtalk-template'
wp option delete 'pafw-use-renewal-failed-notification'
wp option delete 'pafw-renewal-failed-notification-method'
wp option delete 'pafw-smart-review-rate'
wp option delete 'pafw-use-smart-review'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'pafw_bacs_receipt_reg_number'
wp option delete 'pafw_mshop_lguplus'
wp option delete 'pafw_mshop_inicis'
wp option delete 'pafw_mshop_kakaopay'
wp option delete 'pafw_mshop_kcp'
wp option delete 'pafw_mshop_kicc'
wp option delete 'pafw_mshop_nicepay'
wp option delete 'pafw_mshop_payco'
wp option delete 'pafw_mshop_settlebank'
wp option delete 'pafw_mshop_settlepg'
wp option delete 'pafw_mshop_settlevbank'
wp option delete 'pafw_mshop_tosspayments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pafw_%'"
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'pafw-gw-possible_refund_status_for_mypage'
wp option delete 'pafw-gw-order_status_after_payment'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'pafw-subscription-force-renewal-time'
wp option delete 'pafw-subscription-renewal-time-begin'
wp option delete 'pafw-subscription-renewal-time-end'
wp option delete 'pafw-smart-review-template'
wp option delete 'pafw-script-footer'
wp option delete 'pafw-order-pay-form-selector'
wp option delete 'pafw-checkout-form-selector'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'pafw-user-can-edit-comment'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-notices' OR option_name LIKE '_site_transient_%-notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pafw_redirect_url_%' OR option_name LIKE '_site_transient_pafw_redirect_url_%'"
wp transient delete 'pafw_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pafw_renewal_failed_key_%' OR option_name LIKE '_site_transient_pafw_renewal_failed_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__pafw_%' OR option_name LIKE '_site_transient__pafw_%'"

# Clear Cron Jobs
wp cron event delete 'pafw_cancel_unpaid_order_hook'
wp cron event delete 'pafw_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pafw_bacs_receipt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pafw_bacs_receipt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pafw_bacs_receipt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pafw_bacs_receipt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pafw_bacs_receipt_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pafw_bacs_receipt_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pafw_bacs_receipt_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pafw_bacs_receipt_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pafw_bacs_receipt_issue_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pafw_bacs_receipt_issue_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pafw_bacs_receipt_issue_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pafw_bacs_receipt_issue_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pafw_bacs_receipt_reg_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pafw_bacs_receipt_reg_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pafw_bacs_receipt_reg_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pafw_bacs_receipt_reg_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mshop_acceptance_of_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mshop_acceptance_of_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mshop_acceptance_of_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mshop_acceptance_of_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pafw_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pafw_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pafw_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pafw_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
