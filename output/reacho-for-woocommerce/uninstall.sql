-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reachowc_consumer_key', 'reachowc_consumer_secret', 'reachowc_settings');

