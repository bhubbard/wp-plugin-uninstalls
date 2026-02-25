-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gathercontent_version', 'gc-api-updated', 'gathercontent_importer', 'active_sitewide_plugins', 'gathercontent_transients', 'gc_post_types', 'gathercontent_importer_custom_field_keys');
DELETE FROM wp_options WHERE option_name LIKE '%_api_url';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_saved_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gc_mapped_item_id', '_gc_mapping_id', '_gc_mapped_meta', 'dismissed_wp_pointers', '_gc_account', '_gc_project', '_gc_template', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gc_mapped_item_id', '_gc_mapping_id', '_gc_mapped_meta', 'dismissed_wp_pointers', '_gc_account', '_gc_project', '_gc_template', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gc_mapped_item_id', '_gc_mapping_id', '_gc_mapped_meta', 'dismissed_wp_pointers', '_gc_account', '_gc_project', '_gc_template', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gc_mapped_item_id', '_gc_mapping_id', '_gc_mapped_meta', 'dismissed_wp_pointers', '_gc_account', '_gc_project', '_gc_template', '_wp_attachment_image_alt');

