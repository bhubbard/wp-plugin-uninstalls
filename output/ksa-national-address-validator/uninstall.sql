-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otoksa_city_mapping', 'ksa_nav_city_mapping', 'otoksa_shortcode_required', 'ksa_nav_shortcode_required', 'otoksa_refresh_token', 'ksa_nav_refresh_token', 'otoksa_access_token', 'ksa_nav_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_otoksa_shortcode', '_ksa_national_address_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_otoksa_shortcode', '_ksa_national_address_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_otoksa_shortcode', '_ksa_national_address_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_otoksa_shortcode', '_ksa_national_address_shortcode');

