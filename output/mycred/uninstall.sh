#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mycred_mbe_subscribe'
wp option delete 'mycred_buycred_last_call'
wp option delete 'mycred_buycred_reset'
wp option delete 'woocommerce_mycred_settings'
wp option delete 'mycred_wpecom_settings'
wp option delete 'currency_type'
wp option delete 'mycred_espresso_gateway_prefs'
wp option delete 'event_espresso_active_gateways'
wp option delete 'mycred_eventsmanager_gateway_prefs'
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_currency_decimal_point'
wp option delete 'dbem_bookings_currency_thousands_sep'
wp option delete 'dbem_bookings_currency'
wp option delete 'dbem_bookings_currency_format'
wp option delete 'mycred_sell_content_one_seven_updated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'dbem_multiple_bookings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pendings'"
wp option delete 'mycred_affiliate_counter'
wp option delete 'mycred_version_db'
wp option delete 'mycred_core_addons'
wp option delete 'mycred_version'
wp option delete 'mycred_deactivated_on'
wp option delete 'woocommerce_currency'
wp option delete 'mycred_pref_remote'
wp option delete 'mycred_key'
wp option delete 'mycred_pref_addons'
wp option delete 'mycred_network'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mycred_notice_%' OR option_name LIKE '_site_transient_mycred_notice_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'mycred-pending-bp-signups'
wp transient delete 'mycred_log_entries'
wp transient delete 'mycred-export-raw'
wp transient delete 'mycred-accounts-reset'

# Clear Cron Jobs
wp cron event delete 'mycred_schedule_deposit_event'
wp cron event delete 'mycred_send_email_notices'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'mycred_reset_key'
wp cron event delete 'mycred_banking_recurring_payout'
wp cron event delete 'mycred_banking_interest_compound'
wp cron event delete 'mycred_banking_interest_payout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashcred_payment_transfer_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashcred_payment_transfer_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashcred_payment_transfer_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashcred_payment_transfer_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'point_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'point_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'point_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'point_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashcred_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashcred_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashcred_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashcred_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee_snapshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee_snapshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee_snapshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee_snapshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashcred_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashcred_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashcred_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashcred_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashcred_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashcred_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashcred_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashcred_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mycred_content_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mycred_content_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mycred_content_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mycred_content_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mycred_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mycred_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mycred_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mycred_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctype'"
