-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pushconnect_status', 'pushconnect_api_key', 'pushconnect_notify_posts', 'pushconnect_javascript_location');

