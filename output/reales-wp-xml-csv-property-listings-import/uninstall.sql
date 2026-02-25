-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reales_fields_settings', 'reales_prop_fields_settings', 'reales_amenities_settings', 'reales_cities_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_gallery', 'property_plans', 'property_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_gallery', 'property_plans', 'property_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_gallery', 'property_plans', 'property_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_gallery', 'property_plans', 'property_city');

