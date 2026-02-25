-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dolomon-url', 'dolomon-app_id', 'dolomon-app_secret', 'dolomon-cache_expiration', 'dolomon_data');

