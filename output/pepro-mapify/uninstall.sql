-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('place_details_content_template', 'place_details_address', 'place_details_phone', 'place_details_site', 'place_details_email', 'place_details_socailtw', 'place_details_socailfb', 'place_details_socailig', 'place_details_socailtg', 'place_details_socailli', 'place_details_additional', 'place_details_map_data', 'place_details_pinimg');
DELETE FROM wp_usermeta WHERE meta_key IN ('place_details_content_template', 'place_details_address', 'place_details_phone', 'place_details_site', 'place_details_email', 'place_details_socailtw', 'place_details_socailfb', 'place_details_socailig', 'place_details_socailtg', 'place_details_socailli', 'place_details_additional', 'place_details_map_data', 'place_details_pinimg');
DELETE FROM wp_termmeta WHERE meta_key IN ('place_details_content_template', 'place_details_address', 'place_details_phone', 'place_details_site', 'place_details_email', 'place_details_socailtw', 'place_details_socailfb', 'place_details_socailig', 'place_details_socailtg', 'place_details_socailli', 'place_details_additional', 'place_details_map_data', 'place_details_pinimg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('place_details_content_template', 'place_details_address', 'place_details_phone', 'place_details_site', 'place_details_email', 'place_details_socailtw', 'place_details_socailfb', 'place_details_socailig', 'place_details_socailtg', 'place_details_socailli', 'place_details_additional', 'place_details_map_data', 'place_details_pinimg');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'place_details_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'place_details_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'place_details_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'place_details_%';

