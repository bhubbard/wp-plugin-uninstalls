-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_coinsnap');
DELETE FROM wp_options WHERE option_name LIKE 'ninja_forms_settings_coinsnap_webhook_%';

