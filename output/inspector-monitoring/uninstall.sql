-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inspector_api_key', 'inspector_enable', 'inspector_track_admin');

