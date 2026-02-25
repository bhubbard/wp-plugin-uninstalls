-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('endora_reklama', 'endora_api', 'endora_rss', 'endora_dash_rss', 'endora_dash_api');

