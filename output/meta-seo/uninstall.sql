-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('manornk_meta_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manornk_meta_description_value_key', '_manornk_rel_canonical_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manornk_meta_description_value_key', '_manornk_rel_canonical_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manornk_meta_description_value_key', '_manornk_rel_canonical_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manornk_meta_description_value_key', '_manornk_rel_canonical_value_key');

