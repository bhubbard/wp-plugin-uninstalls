-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soundcite_soundcloud_client_id', 'soundcite_background_color');

