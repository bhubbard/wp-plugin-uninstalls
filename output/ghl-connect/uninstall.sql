-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghlconnect_access_token', 'ghlconnect_locationId', 'ghlconnect_client_id', 'ghlconnect_client_secret', 'ghlconnect_refresh_token', 'ghlconnect_loc_name', 'woo_contact_id', 'ghlconnect_contact_register_choice', 'ghlconnect_location_connected', 'ghlconnect_order_status', 'is_access_token_valid', 'ghlconnect_location_tags', 'ghlconnect_location_wokflow');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ghlconnect_location_tags', 'ghlconnect_location_workflow');
DELETE FROM wp_usermeta WHERE meta_key IN ('ghlconnect_location_tags', 'ghlconnect_location_workflow');
DELETE FROM wp_termmeta WHERE meta_key IN ('ghlconnect_location_tags', 'ghlconnect_location_workflow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ghlconnect_location_tags', 'ghlconnect_location_workflow');

