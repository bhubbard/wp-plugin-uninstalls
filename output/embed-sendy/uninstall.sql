-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esd_settings', 'esd_form_settings');
DELETE FROM wp_options WHERE option_name LIKE 'esd_subscribers_%';

