-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_telegram_version', 'wp_telegram_dispatches', 'wp_telegram_log', 'wp_telegram', 'wp_telegram_apikey', 'wp_telegram_last_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('telegram_name', 'telegram_first_name', 'telegram_last_name', 'telegram_username', 'telegram_counter', 'telegram_kt', 'telegram_otk', 'telegram_ikt', 'telegram_future_publish', 'telegram_tosend', 'telegram_tosend_message', 'telegram_last_sent', 'telegram_tosend_target', 'telegram_last_latitude', 'telegram_last_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('telegram_name', 'telegram_first_name', 'telegram_last_name', 'telegram_username', 'telegram_counter', 'telegram_kt', 'telegram_otk', 'telegram_ikt', 'telegram_future_publish', 'telegram_tosend', 'telegram_tosend_message', 'telegram_last_sent', 'telegram_tosend_target', 'telegram_last_latitude', 'telegram_last_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('telegram_name', 'telegram_first_name', 'telegram_last_name', 'telegram_username', 'telegram_counter', 'telegram_kt', 'telegram_otk', 'telegram_ikt', 'telegram_future_publish', 'telegram_tosend', 'telegram_tosend_message', 'telegram_last_sent', 'telegram_tosend_target', 'telegram_last_latitude', 'telegram_last_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('telegram_name', 'telegram_first_name', 'telegram_last_name', 'telegram_username', 'telegram_counter', 'telegram_kt', 'telegram_otk', 'telegram_ikt', 'telegram_future_publish', 'telegram_tosend', 'telegram_tosend_message', 'telegram_last_sent', 'telegram_tosend_target', 'telegram_last_latitude', 'telegram_last_longitude');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'telegram_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'telegram_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'telegram_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'telegram_%';

