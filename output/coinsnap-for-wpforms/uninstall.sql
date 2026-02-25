-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coinsnap_connection_status_display');
DELETE FROM wp_options WHERE option_name LIKE 'wpforms_settings_coinsnap_webhook_%';

