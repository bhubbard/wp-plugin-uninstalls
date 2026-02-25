-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_provider';
DELETE FROM wp_options WHERE option_name LIKE '%_site_id';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_url';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain';
DELETE FROM wp_options WHERE option_name LIKE '%_exclude_admins';

