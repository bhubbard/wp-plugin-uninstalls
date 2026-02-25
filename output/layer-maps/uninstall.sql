-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '_layermaps_layer_pin_colour_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_layermaps_pin_colour', '_layermaps_postcode', '_layermaps_lat', '_layermaps_long', '_layermaps_pin_id', '_layermaps_kml_layer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_layermaps_pin_colour', '_layermaps_postcode', '_layermaps_lat', '_layermaps_long', '_layermaps_pin_id', '_layermaps_kml_layer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_layermaps_pin_colour', '_layermaps_postcode', '_layermaps_lat', '_layermaps_long', '_layermaps_pin_id', '_layermaps_kml_layer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_layermaps_pin_colour', '_layermaps_postcode', '_layermaps_lat', '_layermaps_long', '_layermaps_pin_id', '_layermaps_kml_layer');

