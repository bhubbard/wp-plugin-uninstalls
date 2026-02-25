-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptr_analytics_code', 'ptr_tagmanager_code', 'ptr_noscript_code');

