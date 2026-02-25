-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grid_privileges', 'grid_debug_mode', 'grid_default_container_style', 'grid_default_slot_style', 'grid_default_box_style', 'grid_landing_page_enabled', 'grid_default_container', 'grid_async', 'grid_async_url', 'grid_async_timeout', 'grid_mediaselect_info', 'grid_mediaselect_types', 'grid_permalinks', 'grid', 'grid_post_search_enabled', 'grid_page_search_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_search_enabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

