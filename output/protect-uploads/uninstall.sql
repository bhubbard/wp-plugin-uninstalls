-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('protect_uploads_settings');
DELETE FROM wp_options WHERE option_name LIKE '%-protection';

