-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ignore_asana_plugins_messages', 'asana_active_free_plugin', 'elm_settings', '_elm_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_address_coordinates', 'property_bedrooms', 'property_bathrooms', 'property_garage', 'property_carport', 'property_air_conditioning', 'property_pool', 'property_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_address_coordinates', 'property_bedrooms', 'property_bathrooms', 'property_garage', 'property_carport', 'property_air_conditioning', 'property_pool', 'property_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_address_coordinates', 'property_bedrooms', 'property_bathrooms', 'property_garage', 'property_carport', 'property_air_conditioning', 'property_pool', 'property_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_address_coordinates', 'property_bedrooms', 'property_bathrooms', 'property_garage', 'property_carport', 'property_air_conditioning', 'property_pool', 'property_status');

