-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutenakit_onboarding', 'active_sitewide_plugins', 'gutena_kit_global_typography', 'allowedthemes', 'sidebars_widgets', 'recently_activated', 'gutena_inactive_blocks', 'gutenakit_demo_required_plugins', 'merlin_import_file_base_name', 'pt_importer_data', 'wc_attribute_taxonomies', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_completed';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key_status';
DELETE FROM wp_options WHERE option_name LIKE '%_child';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_merlin_redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'gutenakit_post_config');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'gutenakit_post_config');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'gutenakit_post_config');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id', 'gutenakit_post_config');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

