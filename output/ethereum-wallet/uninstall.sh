#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ethereum-wallet_options'
wp option delete 'wcvendors_vendor_dashboard_page_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_accounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_accounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_accounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_accounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text_input_cryptocurrency_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text_input_cryptocurrency_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text_input_cryptocurrency_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text_input_cryptocurrency_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_txhash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_txhash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_txhash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_txhash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_txtime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_txtime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_txtime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_txtime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_tx_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_tx_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_tx_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_last_tx_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_last_tx_hash'"
