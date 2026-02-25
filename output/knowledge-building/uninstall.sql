-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('knbu_plugin_version', 'knbu_categories', 'knbu_db_version', 'knbu_main_title_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('knbu_map_index', 'comment_title', 'kbtype', 'knbu_map_comment_index', 'node_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('knbu_map_index', 'comment_title', 'kbtype', 'knbu_map_comment_index', 'node_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('knbu_map_index', 'comment_title', 'kbtype', 'knbu_map_comment_index', 'node_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('knbu_map_index', 'comment_title', 'kbtype', 'knbu_map_comment_index', 'node_position');

