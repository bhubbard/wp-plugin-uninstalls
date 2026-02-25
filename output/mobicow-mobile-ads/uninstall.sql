-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adactive', 'adaccountid', 'adsiteid', 'adtype', 'adfreq');

