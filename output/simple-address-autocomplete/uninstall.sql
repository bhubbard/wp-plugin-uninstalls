-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_aa_options_google_maps_api_key', 'simple_aa_options_country', 'simple_aa_options_field_ids', 'simple_aa_options_bias_coordinates', 'simple_aa_options_restriction_type');

