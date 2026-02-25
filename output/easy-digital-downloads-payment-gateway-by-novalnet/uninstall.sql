-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_settings', 'temp_subs_payment', 'edd_recurring_version', 'novalnet_db_version', 'novalnet_version_update');

