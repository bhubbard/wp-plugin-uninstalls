-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_pigeon_content_access', '_wp_pigeon_content_price', '_wp_pigeon_content_value', '_wp_pigeon_content_prompt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_pigeon_content_access', '_wp_pigeon_content_price', '_wp_pigeon_content_value', '_wp_pigeon_content_prompt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_pigeon_content_access', '_wp_pigeon_content_price', '_wp_pigeon_content_value', '_wp_pigeon_content_prompt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_pigeon_content_access', '_wp_pigeon_content_price', '_wp_pigeon_content_value', '_wp_pigeon_content_prompt');

