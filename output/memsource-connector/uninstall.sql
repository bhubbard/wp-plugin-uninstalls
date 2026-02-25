-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('memsource_admin_user');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpml_post_translation_editor_native');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpml_post_translation_editor_native');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpml_post_translation_editor_native');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpml_post_translation_editor_native');

