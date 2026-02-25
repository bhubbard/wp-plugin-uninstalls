-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('schedule');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_uou_reserve_cost', '_wc_base_cost', 'room_schedule', 'load_config', 'load_data', 'canvas_config', 'last_index', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_uou_reserve_cost', '_wc_base_cost', 'room_schedule', 'load_config', 'load_data', 'canvas_config', 'last_index', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_uou_reserve_cost', '_wc_base_cost', 'room_schedule', 'load_config', 'load_data', 'canvas_config', 'last_index', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_uou_reserve_cost', '_wc_base_cost', 'room_schedule', 'load_config', 'load_data', 'canvas_config', 'last_index', '_wp_page_template');

