-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_post_sync_settings', 'smart_post_sync_attr_map', 'smart_post_sync_response');

