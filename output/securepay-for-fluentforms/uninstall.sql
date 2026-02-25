-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentform_payment_settings_securepay');
DELETE FROM wp_options WHERE option_name LIKE '%_banklist';

