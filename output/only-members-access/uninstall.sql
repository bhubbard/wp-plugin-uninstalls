-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('only_members_access_settings');
DELETE FROM wp_options WHERE option_name LIKE '%notices';

