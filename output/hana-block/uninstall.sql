-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hana_block_type', '_hana_block_layout', '_hana_block_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hana_block_type', '_hana_block_layout', '_hana_block_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hana_block_type', '_hana_block_layout', '_hana_block_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hana_block_type', '_hana_block_layout', '_hana_block_action');

