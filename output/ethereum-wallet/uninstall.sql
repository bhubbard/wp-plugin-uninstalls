-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ethereum-wallet_options', 'wcvendors_vendor_dashboard_page_id', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_ethereum_wallet_accounts', 'user_ethereum_wallet_key', 'user_ethereum_wallet_address', '_text_input_cryptocurrency_data', 'user_ethereum_wallet_last_txhash', 'user_ethereum_wallet_last_txtime', 'user_ethereum_wallet_last_tx_currency', 'user_ethereum_wallet_last_tx_to', 'user_ethereum_wallet_last_tx_value', 'user_ethereum_wallet_last_tx_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_ethereum_wallet_accounts', 'user_ethereum_wallet_key', 'user_ethereum_wallet_address', '_text_input_cryptocurrency_data', 'user_ethereum_wallet_last_txhash', 'user_ethereum_wallet_last_txtime', 'user_ethereum_wallet_last_tx_currency', 'user_ethereum_wallet_last_tx_to', 'user_ethereum_wallet_last_tx_value', 'user_ethereum_wallet_last_tx_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_ethereum_wallet_accounts', 'user_ethereum_wallet_key', 'user_ethereum_wallet_address', '_text_input_cryptocurrency_data', 'user_ethereum_wallet_last_txhash', 'user_ethereum_wallet_last_txtime', 'user_ethereum_wallet_last_tx_currency', 'user_ethereum_wallet_last_tx_to', 'user_ethereum_wallet_last_tx_value', 'user_ethereum_wallet_last_tx_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_ethereum_wallet_accounts', 'user_ethereum_wallet_key', 'user_ethereum_wallet_address', '_text_input_cryptocurrency_data', 'user_ethereum_wallet_last_txhash', 'user_ethereum_wallet_last_txtime', 'user_ethereum_wallet_last_tx_currency', 'user_ethereum_wallet_last_tx_to', 'user_ethereum_wallet_last_tx_value', 'user_ethereum_wallet_last_tx_hash');

