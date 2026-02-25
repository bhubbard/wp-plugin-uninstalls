-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apod_api_key', 'apod_default_status', 'apod_post_as');

