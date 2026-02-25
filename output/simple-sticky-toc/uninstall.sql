-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bonddesign_bonddesign_sstoc_options', 'bonddesign_sstoc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bonddesign_sstoc_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bonddesign_sstoc_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bonddesign_sstoc_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bonddesign_sstoc_disable');

