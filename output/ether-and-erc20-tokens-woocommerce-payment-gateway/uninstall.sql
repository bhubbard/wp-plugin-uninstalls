-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_thanks_page_id', 'woocommerce_email_footer_text', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'wpjobster_ether_and_erc20_tokens_payment_gateway_eth_value_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpjobster_ether_and_erc20_tokens_payment_gateway_eth_rate_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpjobster_ether_and_erc20_tokens_payment_gateway_txhash_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpjobster_ether_and_erc20_tokens_payment_gateway_ethereum_block_number%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_text_input_cryptocurrency_data', '_select_cryptocurrency_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('_text_input_cryptocurrency_data', '_select_cryptocurrency_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('_text_input_cryptocurrency_data', '_select_cryptocurrency_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_text_input_cryptocurrency_data', '_select_cryptocurrency_option');

