#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'checkout_for_paypal_email_options'
wp option delete 'checkout_for_paypal_sk_auto_encoded'
wp option delete 'checkout_for_paypal_db_version'
wp option delete 'checkout_for_paypal_load_scripts_globally'
wp option delete 'checkout_for_paypal_locale'
wp option delete 'checkout_for_paypal_buyer_country'
wp option delete 'checkoutforpaypal_logfile_suffix'
wp option delete 'checkout_for_paypal_options'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mc_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkout-for-paypal-custom-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkout-for-paypal-custom-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkout-for-paypal-custom-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkout-for-paypal-custom-field'"
