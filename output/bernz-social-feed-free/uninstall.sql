-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bernz_social_settings');
DELETE FROM wp_options WHERE option_name LIKE 'bernz_social_data_%';

