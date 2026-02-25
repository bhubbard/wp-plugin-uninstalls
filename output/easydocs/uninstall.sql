-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ed_file_order', '_ed_file_layout', '_ed_permalink_structure_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ed_file_order', '_ed_file_layout', '_ed_permalink_structure_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ed_file_order', '_ed_file_layout', '_ed_permalink_structure_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ed_file_order', '_ed_file_layout', '_ed_permalink_structure_notice');

