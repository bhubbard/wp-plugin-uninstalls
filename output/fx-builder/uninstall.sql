-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fx-builder', 'fx-builder_welcome', 'fx-builder_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fxb_row_ids', '_fxb_rows', '_fxb_items', '_fxb_active', '_fxb_db_version', '_fxb_custom_css', '_fxb_custom_css_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fxb_row_ids', '_fxb_rows', '_fxb_items', '_fxb_active', '_fxb_db_version', '_fxb_custom_css', '_fxb_custom_css_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fxb_row_ids', '_fxb_rows', '_fxb_items', '_fxb_active', '_fxb_db_version', '_fxb_custom_css', '_fxb_custom_css_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fxb_row_ids', '_fxb_rows', '_fxb_items', '_fxb_active', '_fxb_db_version', '_fxb_custom_css', '_fxb_custom_css_disable');

