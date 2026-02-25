-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatmetrics_url', 'chatmetrics_enabled', 'chatmetrics_user', 'chatmetrics_code');

