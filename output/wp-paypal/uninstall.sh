#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_paypal_enable_ipn_validation'
wp option delete 'wp_paypal_enable_receiver_check'
wp option delete 'wp_paypal_merchant_id'
wp option delete 'wp_paypal_email'
wp option delete 'wp_paypal_checkout_options'
wp option delete 'wp_paypal_enable_debug'
wp option delete 'wp_paypal_enable_testmode'
wp option delete 'wp_paypal_db_version'
wp option delete 'wp_paypal_currency_code'
wp option delete 'wp_paypal_checkout_load_scripts_globally'
wp option delete 'wppaypal_logfile_suffix'
wp option delete 'wp_paypal_email_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ipn_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ipn_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ipn_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ipn_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-paypal-custom-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-paypal-custom-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-paypal-custom-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-paypal-custom-field'"
