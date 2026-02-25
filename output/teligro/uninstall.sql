-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('teligro-rand-url', 'teligro_version', 'update_keyboard_time_teligro', 'wp-telegram-pro', 'wptp-rand-url', 'woocommerce_notify_no_stock_amount', 'woocommerce_myaccount_orders_endpoint', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('telegram_receive_plugins_notification', 'order_note_message_teligro', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('telegram_receive_plugins_notification', 'order_note_message_teligro', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('telegram_receive_plugins_notification', 'order_note_message_teligro', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('telegram_receive_plugins_notification', 'order_note_message_teligro', '_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_teligro';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_teligro';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_teligro';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_teligro';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

