-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('telegram_notify_option_name', 'telegram_notify_option_name_tab2', 'telegram_notify_option_name_tab3', 'telegram_notify_option_name_tab4', 'telegram_notify_option_name_tab5', 'nftb_fix_1', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'nftb_new_order_id_for_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Telegram', 'nftb_ignore_notyyy', 'votes_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('Telegram', 'nftb_ignore_notyyy', 'votes_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('Telegram', 'nftb_ignore_notyyy', 'votes_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Telegram', 'nftb_ignore_notyyy', 'votes_count');

