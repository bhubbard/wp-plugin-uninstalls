-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bugsnag_network', 'bugsnag_api_key', 'bugsnag_notify_severities', 'bugsnag_filterfields');

