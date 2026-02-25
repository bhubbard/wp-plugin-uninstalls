#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_mycryptocheckout_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'mycryptocheckout_hourly'
wp cron event delete 'mycryptocheckout_retrieve_account'
wp cron event delete 'mycryptocheckout_check_for_valid_payment_id'
wp cron event delete 'mycryptocheckout_send_payment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_currency_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_currency_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_currency_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_currency_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_confirmations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_confirmations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_confirmations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_confirmations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_payment_timeout_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_payment_timeout_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_payment_timeout_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_payment_timeout_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mcc_payment_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mcc_payment_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mcc_payment_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mcc_payment_data'"
