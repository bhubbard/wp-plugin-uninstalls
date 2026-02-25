-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_option_name', 'my_option_name', 'foo', 'wpov-settings', 'wpov_detect_plugin_activation_process', 'random_600', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', '_edit_last', 'rebney', 'quote', 'gameshow', 'title', 'post_title', 'Frank', '_thumbnail_id', '_wp_attached_file', '_wp_attachment_metadata', 'architect', 'custom_photo', 'cap-linked_account', 'best_radiohead_album', '_menu_item_type', '_menu_item_object_id', '_menu_item_url', '_menu_item_xfn', '_menu_item_menu_item_parent', '_menu_item_object', 'flood', 'tobias', 'type', '_type', 'landmark', 'the-field-name', 'with_underscores', 'meta', 'gallery', 'audio', 'video', 'foo', 'bar', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', '_edit_last', 'rebney', 'quote', 'gameshow', 'title', 'post_title', 'Frank', '_thumbnail_id', '_wp_attached_file', '_wp_attachment_metadata', 'architect', 'custom_photo', 'cap-linked_account', 'best_radiohead_album', '_menu_item_type', '_menu_item_object_id', '_menu_item_url', '_menu_item_xfn', '_menu_item_menu_item_parent', '_menu_item_object', 'flood', 'tobias', 'type', '_type', 'landmark', 'the-field-name', 'with_underscores', 'meta', 'gallery', 'audio', 'video', 'foo', 'bar', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', '_edit_last', 'rebney', 'quote', 'gameshow', 'title', 'post_title', 'Frank', '_thumbnail_id', '_wp_attached_file', '_wp_attachment_metadata', 'architect', 'custom_photo', 'cap-linked_account', 'best_radiohead_album', '_menu_item_type', '_menu_item_object_id', '_menu_item_url', '_menu_item_xfn', '_menu_item_menu_item_parent', '_menu_item_object', 'flood', 'tobias', 'type', '_type', 'landmark', 'the-field-name', 'with_underscores', 'meta', 'gallery', 'audio', 'video', 'foo', 'bar', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wp_attachment_image_alt', '_edit_last', 'rebney', 'quote', 'gameshow', 'title', 'post_title', 'Frank', '_thumbnail_id', '_wp_attached_file', '_wp_attachment_metadata', 'architect', 'custom_photo', 'cap-linked_account', 'best_radiohead_album', '_menu_item_type', '_menu_item_object_id', '_menu_item_url', '_menu_item_xfn', '_menu_item_menu_item_parent', '_menu_item_object', 'flood', 'tobias', 'type', '_type', 'landmark', 'the-field-name', 'with_underscores', 'meta', 'gallery', 'audio', 'video', 'foo', 'bar', 'description');

