-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saudadpr_enabled', 'saudadpr_api_key', 'saudadpr_api_url', 'saudadpr_language', 'saudadpr_show_courier_preview', 'saudadpr_migrated');

