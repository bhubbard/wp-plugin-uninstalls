#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wallets_caps_initialized'
wp option delete 'wallets_rates_tor_enabled'
wp option delete 'wallets_rates_tor_ip'
wp option delete 'wallets_rates_tor_port'
wp option delete 'wallets_addresses_max_count'
wp option delete 'wallets_disable_cache'
wp option delete 'wallets_transients_broken'
wp option delete 'wallets_deposit_cutoff'
wp option delete 'wallets_shortcodes_in_posts'
wp option delete 'wallets_frontend_vs_amount_decimals'
wp option delete 'wallets_polling_interval'
wp option delete 'wallets_legacy_json_api'
wp option delete 'wallets_move_spills_users'
wp option delete 'wallets_emails_max_batch_size'
wp option delete 'wallets_emails_max_recipients_batch_size'
wp option delete 'wallets_confirm_move_user_enabled'
wp option delete 'wallets_confirm_withdraw_user_enabled'
wp option delete 'wallets_confirm_redirect_page'
wp option delete 'wallets_email_forwarding_enabled'
wp option delete 'wallets_email_error_forwarding_enabled'
wp option delete 'wallets_cron_task_timeout'
wp option delete 'wallets_cron_verbose'
wp option delete 'wallets_cron_approve_withdrawals'
wp option delete 'wallets_withdrawals_max_batch_size'
wp option delete 'wallets_moves_max_batch_size'
wp option delete 'wallets_cron_aggregate'
wp option delete 'wallets_cron_autocancel'
wp option delete 'wallets_http_timeout'
wp option delete 'wallets_http_redirects'
wp option delete 'wallets_http_tor_enabled'
wp option delete 'wallets_http_tor_ip'
wp option delete 'wallets_http_tor_port'
wp option delete 'wallets_rates_vs'
wp option delete 'wallets_fiat_fixerio_key'
wp option delete 'wallets_fiat_fixerio_currencies'
wp option delete 'ds-activation-code'

# Delete Transients
wp transient delete 'wallets_transients_test'

# Clear Cron Jobs
wp cron event delete 'wallets_cron_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_pointers_dismissed_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_pointers_dismissed_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_pointers_dismissed_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_pointers_dismissed_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_pointers_dismissed_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_pointers_dismissed_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_pointers_dismissed_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_pointers_dismissed_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_pointers_dismissed_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_pointers_dismissed_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_pointers_dismissed_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_pointers_dismissed_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_pointers_dismissed_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_pointers_dismissed_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_pointers_dismissed_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_pointers_dismissed_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_apikey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_apikey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_apikey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_apikey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_admin_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_admin_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_admin_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_admin_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_wd_counter_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_wd_counter_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_wd_counter_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_wd_counter_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_wd_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_wd_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_wd_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_wd_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallets_adapter_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallets_adapter_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallets_adapter_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallets_adapter_settings'"
