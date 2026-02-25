-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('websiteanalist_site_id', 'websiteanalist_base_url', 'websiteanalist_tracking_enabled', 'websiteanalist_track_tel', 'websiteanalist_track_email', 'websiteanalist_debug_mode', 'websiteanalist_custom_actions');

