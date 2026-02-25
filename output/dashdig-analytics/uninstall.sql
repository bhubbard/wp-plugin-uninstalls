-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashdig_api_key', 'dashdig_enabled', 'dashdig_script_position', 'dashdig_exclude_admins', 'dashdig_tracking_id', 'dashdig_tracking_enabled', 'dashdig_track_admins', 'dashdig_site_id', 'dashdig_version');

