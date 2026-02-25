-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vlp_templates', 'vlp_activated');
DELETE FROM wp_options WHERE option_name LIKE 'vlp_template_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

