-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharedaddy_disable_resources', 'jpssp-feedly-api');

