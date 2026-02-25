-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vjwpad_settings', 'vjwpad_assignUser');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_object_id', '_wp_old_slug', 'author', '_k4exclusive', '_editor', '_pluginOrigin', '_raw', 'mediaContentId', '_version', 'contentId', '_origin', '_section', '_language', '_preview');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_object_id', '_wp_old_slug', 'author', '_k4exclusive', '_editor', '_pluginOrigin', '_raw', 'mediaContentId', '_version', 'contentId', '_origin', '_section', '_language', '_preview');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_object_id', '_wp_old_slug', 'author', '_k4exclusive', '_editor', '_pluginOrigin', '_raw', 'mediaContentId', '_version', 'contentId', '_origin', '_section', '_language', '_preview');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_object_id', '_wp_old_slug', 'author', '_k4exclusive', '_editor', '_pluginOrigin', '_raw', 'mediaContentId', '_version', 'contentId', '_origin', '_section', '_language', '_preview');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_oembed_time_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_oembed_time_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_oembed_time_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_oembed_time_%';

