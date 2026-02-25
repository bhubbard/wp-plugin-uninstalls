-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alma_previous_version', 'alma_version', 'alma_migration_ongoing', 'woocommerce_alma_settings', 'alma_warnings_handled', 'woocommerce_checkout_phone_field', 'alma_soc_ongoing', 'wc_alma_settings', 'alma-admin-soc-panel');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';

