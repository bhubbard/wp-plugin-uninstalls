-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_destination', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('terminal_id', '_dellin_track_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('terminal_id', '_dellin_track_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('terminal_id', '_dellin_track_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('terminal_id', '_dellin_track_id');

