-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fwsbs_trash_pending_subscriptions', 'fwsbs_trash_cancelled_subscriptions', 'woocommerce_price_num_decimals', 'fwsbs_enabled', 'fwsbs_allow_customer_cancel_subscription', 'woocommerce_foloosi_settings', 'foloosi_recently_activated', 'foloosi_plugin_fw_panel_wc_default_options_set');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_fwsbs_subscription', '_fwsbs_price_is_per', '_fwsbs_price_time_option', '_fwsbs_max_length', '_fwsbs_setup_fee', 'renew_order', '_renew_order', 'order_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_fwsbs_subscription', '_fwsbs_price_is_per', '_fwsbs_price_time_option', '_fwsbs_max_length', '_fwsbs_setup_fee', 'renew_order', '_renew_order', 'order_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_fwsbs_subscription', '_fwsbs_price_is_per', '_fwsbs_price_time_option', '_fwsbs_max_length', '_fwsbs_setup_fee', 'renew_order', '_renew_order', 'order_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_fwsbs_subscription', '_fwsbs_price_is_per', '_fwsbs_price_time_option', '_fwsbs_max_length', '_fwsbs_setup_fee', 'renew_order', '_renew_order', 'order_ids');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_trial_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_trial_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_trial_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_trial_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_downgrade_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_downgrade_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_downgrade_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_downgrade_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_upgrade_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_upgrade_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_upgrade_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_upgrade_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

