#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpp_sandbox_webhook_id'
wp option delete 'cpp_live_webhook_id'
wp option delete 'woocommerce_complete_paypal_payments_settings'

# Delete Transients
wp transient delete 'cpp_is_webhook_process_started'
wp transient delete 'ppc_wp_review_request'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppc_paypal_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppc_paypal_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppc_paypal_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppc_paypal_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppc_wp_billing_phone_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppc_wp_billing_phone_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppc_wp_billing_phone_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppc_wp_billing_phone_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppc_wp_review_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppc_wp_review_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppc_wp_review_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppc_wp_review_request'"
