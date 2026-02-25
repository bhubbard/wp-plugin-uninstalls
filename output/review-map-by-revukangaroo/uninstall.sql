-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reviewmapby_revkang_custom_map_key_map', 'reviewmapby_revkang_city_api', 'reviewmapby_revkang_cities_api', 'reviewmapby_revkang_state_api', 'reviewmapby_revkang_show_map_api', 'reviewmapby_revkang_show_posts_api', 'reviewmapby_revkang_count_api', 'reviewmapby_revkang_pincount_api', 'reviewmapby_revkang_map_zoom_level');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

