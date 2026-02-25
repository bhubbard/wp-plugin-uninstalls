-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crfw_db_version', 'crfw_settings_email', 'crfw_cart_completion_working', 'crfw_cart_salt', 'crfw_cron_last_run', 'crfw_anon_meta_clearup_processed_until', 'woocommerce_tax_display_shop', 'checkout_url', 'crfw_cart_value_tracking_started', 'crfw_settings_main', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'crfw_licence_%';
DELETE FROM wp_options WHERE option_name LIKE 'crfw_licence_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'crfw_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_payment_user_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_payment_user_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_payment_user_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_payment_user_email');

