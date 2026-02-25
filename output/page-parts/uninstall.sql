-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_page_part_location', '_page_part_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_page_part_location', '_page_part_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_page_part_location', '_page_part_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_page_part_location', '_page_part_template');

