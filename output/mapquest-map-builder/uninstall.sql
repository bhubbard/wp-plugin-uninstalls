-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mq_maps_map_height', 'mq_maps_map_width', 'mq_maps_use_sidebar', 'mq_maps_use_editor_toolbar', 'mq_maps_use_editor_toolbar_line', 'mq_maps_use_quicktags_toolbar', 'mq_maps_use_media_toolbar');

