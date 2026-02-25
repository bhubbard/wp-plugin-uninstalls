-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epl_rewrite_rules', 'epl_db_upgraded_to', 'epl_settings', 'epl_settings_backup', 'epl_updated_global_price', 'epl_version_upgraded_from', 'epl_license', 'epl_use_php_sessions', 'epl_version', '_wp_session_list', 'epl_enable_import_geocode', 'epl_contact_tag_bg', 'epl_admin_notices_display', 'epl_contributors', '_epl_activation_redirect', 'easypropertylistings_add_ons_feed', 'update_plugins', 'epl_license_error', '_epl_validate_license', '_epl_activation_pages');
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_rent', 'property_price_global', 'property_price', 'property_com_rent', 'property_featured', 'property_floorplan', 'property_floorplan_2', 'property_status', 'property_owner', 'contact_first_name', 'contact_last_name', 'contact_emails', 'contact_interested_listings', 'epl_interested_contacts', 'epl_contact_id', 'property_inspection_times', 'property_heading', 'property_address_sub_number', 'property_address_street_number', 'property_address_street', 'property_address_suburb', 'property_address_state', 'property_address_postal_code', 'property_address_coordinates', 'property_address_hide_map', 'property_agent_hide_author_box', 'property_unique_id', 'property_com_listing_type', 'term_bg');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_rent', 'property_price_global', 'property_price', 'property_com_rent', 'property_featured', 'property_floorplan', 'property_floorplan_2', 'property_status', 'property_owner', 'contact_first_name', 'contact_last_name', 'contact_emails', 'contact_interested_listings', 'epl_interested_contacts', 'epl_contact_id', 'property_inspection_times', 'property_heading', 'property_address_sub_number', 'property_address_street_number', 'property_address_street', 'property_address_suburb', 'property_address_state', 'property_address_postal_code', 'property_address_coordinates', 'property_address_hide_map', 'property_agent_hide_author_box', 'property_unique_id', 'property_com_listing_type', 'term_bg');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_rent', 'property_price_global', 'property_price', 'property_com_rent', 'property_featured', 'property_floorplan', 'property_floorplan_2', 'property_status', 'property_owner', 'contact_first_name', 'contact_last_name', 'contact_emails', 'contact_interested_listings', 'epl_interested_contacts', 'epl_contact_id', 'property_inspection_times', 'property_heading', 'property_address_sub_number', 'property_address_street_number', 'property_address_street', 'property_address_suburb', 'property_address_state', 'property_address_postal_code', 'property_address_coordinates', 'property_address_hide_map', 'property_agent_hide_author_box', 'property_unique_id', 'property_com_listing_type', 'term_bg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_rent', 'property_price_global', 'property_price', 'property_com_rent', 'property_featured', 'property_floorplan', 'property_floorplan_2', 'property_status', 'property_owner', 'contact_first_name', 'contact_last_name', 'contact_emails', 'contact_interested_listings', 'epl_interested_contacts', 'epl_contact_id', 'property_inspection_times', 'property_heading', 'property_address_sub_number', 'property_address_street_number', 'property_address_street', 'property_address_suburb', 'property_address_state', 'property_address_postal_code', 'property_address_coordinates', 'property_address_hide_map', 'property_agent_hide_author_box', 'property_unique_id', 'property_com_listing_type', 'term_bg');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_label';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_label';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_label';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_label';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%selection_made';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%selection_made';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%selection_made';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%selection_made';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%enabled_thumbs';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%enabled_thumbs';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%enabled_thumbs';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%enabled_thumbs';

