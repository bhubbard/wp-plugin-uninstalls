-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oaws_cloudfront_url', 'oaws_status_connection', 'oaws_updated_settings', 'active_sitewide_plugins');

