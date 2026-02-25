-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'cccf7_api_key', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cccf7_price', 'cccf7_enable', 'cccf7_amount', 'cccf7_form_id', 'cccf7_payment_status', 'cccf7_checkout_id', 'cccf7_currency_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('cccf7_price', 'cccf7_enable', 'cccf7_amount', 'cccf7_form_id', 'cccf7_payment_status', 'cccf7_checkout_id', 'cccf7_currency_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('cccf7_price', 'cccf7_enable', 'cccf7_amount', 'cccf7_form_id', 'cccf7_payment_status', 'cccf7_checkout_id', 'cccf7_currency_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cccf7_price', 'cccf7_enable', 'cccf7_amount', 'cccf7_form_id', 'cccf7_payment_status', 'cccf7_checkout_id', 'cccf7_currency_code');

