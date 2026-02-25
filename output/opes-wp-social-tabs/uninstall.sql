-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_main_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_social_links';

