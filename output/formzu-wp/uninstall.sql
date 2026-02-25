-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'formzu_option_data', 'widget_formzudefaultwidget', 'formzu-admin-errors', 'formzu-admin-updated', 'formzu-admin-error', 'formzu-admin-html');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_object_id', 'dismissed_wp_pointers', '_menu_item_url', '_menu_item_type', '_menu_item_object');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_object_id', 'dismissed_wp_pointers', '_menu_item_url', '_menu_item_type', '_menu_item_object');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_object_id', 'dismissed_wp_pointers', '_menu_item_url', '_menu_item_type', '_menu_item_object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_object_id', 'dismissed_wp_pointers', '_menu_item_url', '_menu_item_type', '_menu_item_object');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'closedpostboxes_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta-box-order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta-box-order_%';

