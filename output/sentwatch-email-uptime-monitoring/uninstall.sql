-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sentwatch_connected', 'sentwatch_api_key', 'sentwatch_site_uuid', 'sentwatch_last_heartbeat', 'sentwatch_interval', 'sentwatch_heartbeat_email');

