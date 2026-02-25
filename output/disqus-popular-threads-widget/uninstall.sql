-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_diqus_api_key', '_diqus_forum_ID', '_diqus_forum_domain');

