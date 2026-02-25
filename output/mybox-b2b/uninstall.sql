-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mybox_option_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zone', 'zone_id', 'address_reference', 'secondary_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('zone', 'zone_id', 'address_reference', 'secondary_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('zone', 'zone_id', 'address_reference', 'secondary_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zone', 'zone_id', 'address_reference', 'secondary_phone');

