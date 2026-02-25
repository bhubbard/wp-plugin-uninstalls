-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('up_globe_uuid', 'up_globe_api_url', 'up_globe_parent_uuid', 'up_globe_last_registration_result');

