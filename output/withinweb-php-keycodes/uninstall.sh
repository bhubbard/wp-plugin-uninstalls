#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'withinweb_wwkc_keycodes_paypal_dolocaltest'
wp option delete 'withinweb_wwkc_keycodes_paypal_email'
wp option delete 'withinweb_wwkc_keycodes_sandbox_paypal_email'
wp option delete 'withinweb_wwkc_keycodes_cancel_url'
wp option delete 'withinweb_wwkc_keycodes_return_url'
wp option delete 'withinweb_wwkc_keycodes_ipn_url'
wp option delete 'withinweb_wwkc_keycodes_paypal_environment'
wp option delete 'withinweb_wwkc_keycodes_paypal_debug'
wp option delete 'enable_mailchimp'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'ipn_forwarding_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paypal_ipn_forwarder_url_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paypal_ipn_forwarder_url_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paypal_ipn_forwarder_url_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paypal_ipn_forwarder_url_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_request_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_request_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_request_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_request_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscr_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscr_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscr_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscr_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_business_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_business_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_business_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_business_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_amount3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_amount3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_amount3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_amount3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txn_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txn_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txn_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txn_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'IPN_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'IPN_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'IPN_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'IPN_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_ipn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_ipn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_ipn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_ipn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipn data serialized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipn data serialized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipn data serialized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipn data serialized'"
