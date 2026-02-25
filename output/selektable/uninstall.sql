-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selektable_store_id', 'selektable_app_url', 'selektable_integrations', 'woocommerce_dimension_unit', 'selektable_db_version', 'selektable_widget_id', 'selektable_button_placement', 'selektable_button_text', 'selektable_button_class', 'selektable_enable_all', 'selektable_enabled_categories', 'selektable_enabled_tags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_selektable_status', '_selektable_override_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_selektable_status', '_selektable_override_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_selektable_status', '_selektable_override_image_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_selektable_status', '_selektable_override_image_id', '_wp_attachment_image_alt');

