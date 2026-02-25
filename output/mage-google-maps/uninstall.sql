-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mage_maps', 'widget_mage_maps', 'mage_meta_keys');
DELETE FROM wp_options WHERE option_name LIKE 'mage_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cast', 'mage_zip');
DELETE FROM wp_usermeta WHERE meta_key IN ('cast', 'mage_zip');
DELETE FROM wp_termmeta WHERE meta_key IN ('cast', 'mage_zip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cast', 'mage_zip');

