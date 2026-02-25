-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deliveryplus_distance_apikey');
DELETE FROM wp_options WHERE option_name LIKE 'deliveryplus_distance_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('deliveryplus_gf_entry');
DELETE FROM wp_usermeta WHERE meta_key IN ('deliveryplus_gf_entry');
DELETE FROM wp_termmeta WHERE meta_key IN ('deliveryplus_gf_entry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('deliveryplus_gf_entry');

