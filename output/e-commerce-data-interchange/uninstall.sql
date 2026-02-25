-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_edi_filename', 'edi', '_edi_mode', '_edi_type', '_edi_last_xml_entry', '_edi_1c_category_map', '_edi_1c_attribute_map', '_edi_1c_image_map', 'edi-interrupt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edi_guid_match_source', '_edi_guid_match_synced_at', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edi_guid_match_source', '_edi_guid_match_synced_at', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edi_guid_match_source', '_edi_guid_match_synced_at', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edi_guid_match_source', '_edi_guid_match_synced_at', '_wp_page_template');

