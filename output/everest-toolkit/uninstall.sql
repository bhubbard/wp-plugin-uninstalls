-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('everest_toolkit_consent_optin', 'everest_themes', 'sidebars_widgets', 'widget_everest-news-lite-fullwidth-widget-cat-three', 'widget_everest-news-halfwidth-widget-five', 'nav_menu', 'everest_toolkit_activate_time', 'everest_toolkit_consent_skip', 'MG_importer_data');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_ignore';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_ignore';

