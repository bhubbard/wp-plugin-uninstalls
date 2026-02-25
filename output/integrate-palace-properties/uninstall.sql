-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('integrate_palace_properties_username', 'integrate_palace_properties_password', 'integrate_palace-palace-unique-id', 'integrate_palace_properties_slug', 'ipp_settings', 'integrate_palace_properties_subscription_key', 'integrate_palace_properties_webhook_status', 'integrate_palace_properties_webhook_url', 'integrate_palace_select_template', 'ipp_select_template', 'integrate_palace_settings', 'IPPR_CUSTOMIZER_SETTING_DEFAULTS');
DELETE FROM wp_options WHERE option_name LIKE '%[ippr_customizer_defaults]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('integrate_palace_gallery', 'information_property_code', 'property_area', 'information_address', 'information_rent', 'information_date', 'information_suburb', 'information_region', 'information_code', 'accommodation_bed_room', 'accommodation_bath_room', 'accommodation_automobile', 'other_pets', 'other_parking', 'street_number', 'street_name', 'property_city', 'zipcode', 'agent_code', 'property_year_built', 'property_class', 'property_smokers_allowed', 'property_virtual_tour_url', 'property_geographic_location', 'property_rental_period', 'property_status', 'property_management_type', 'property_owner_code', 'agent_full_name', 'agent_email1', 'agent_email2', 'agent_fax', 'agent_phone_mobile', 'agent_phone_work', 'agent_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('integrate_palace_gallery', 'information_property_code', 'property_area', 'information_address', 'information_rent', 'information_date', 'information_suburb', 'information_region', 'information_code', 'accommodation_bed_room', 'accommodation_bath_room', 'accommodation_automobile', 'other_pets', 'other_parking', 'street_number', 'street_name', 'property_city', 'zipcode', 'agent_code', 'property_year_built', 'property_class', 'property_smokers_allowed', 'property_virtual_tour_url', 'property_geographic_location', 'property_rental_period', 'property_status', 'property_management_type', 'property_owner_code', 'agent_full_name', 'agent_email1', 'agent_email2', 'agent_fax', 'agent_phone_mobile', 'agent_phone_work', 'agent_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('integrate_palace_gallery', 'information_property_code', 'property_area', 'information_address', 'information_rent', 'information_date', 'information_suburb', 'information_region', 'information_code', 'accommodation_bed_room', 'accommodation_bath_room', 'accommodation_automobile', 'other_pets', 'other_parking', 'street_number', 'street_name', 'property_city', 'zipcode', 'agent_code', 'property_year_built', 'property_class', 'property_smokers_allowed', 'property_virtual_tour_url', 'property_geographic_location', 'property_rental_period', 'property_status', 'property_management_type', 'property_owner_code', 'agent_full_name', 'agent_email1', 'agent_email2', 'agent_fax', 'agent_phone_mobile', 'agent_phone_work', 'agent_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('integrate_palace_gallery', 'information_property_code', 'property_area', 'information_address', 'information_rent', 'information_date', 'information_suburb', 'information_region', 'information_code', 'accommodation_bed_room', 'accommodation_bath_room', 'accommodation_automobile', 'other_pets', 'other_parking', 'street_number', 'street_name', 'property_city', 'zipcode', 'agent_code', 'property_year_built', 'property_class', 'property_smokers_allowed', 'property_virtual_tour_url', 'property_geographic_location', 'property_rental_period', 'property_status', 'property_management_type', 'property_owner_code', 'agent_full_name', 'agent_email1', 'agent_email2', 'agent_fax', 'agent_phone_mobile', 'agent_phone_work', 'agent_title');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'property_suburb_code_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'property_suburb_code_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'property_suburb_code_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'property_suburb_code_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'property_suburb_district_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'property_suburb_district_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'property_suburb_district_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'property_suburb_district_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'property_suburb_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'property_suburb_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'property_suburb_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'property_suburb_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'property_suburb_region_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'property_suburb_region_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'property_suburb_region_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'property_suburb_region_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'property_suburb_type_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'property_suburb_type_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'property_suburb_type_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'property_suburb_type_%';

