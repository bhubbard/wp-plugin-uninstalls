-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'recently_activated', 'inxkick_property_list_cache', 'inxkick_map_marker_cache', 'inx_preview_pagination_output', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inx_req_prop_cf_check', '_thumbnail_id', '_inx_is_sale', '_inx_list_map_marker_coords', '_inx_list_map_marker', '_immonex_is_available', '_immonex_is_reference', '_inx_lat', '_inx_lng', '_wp_attachment_image_alt', '_immonex_property_xml_source', '_inx_team_agent_primary', '_inx_team_agency_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inx_req_prop_cf_check', '_thumbnail_id', '_inx_is_sale', '_inx_list_map_marker_coords', '_inx_list_map_marker', '_immonex_is_available', '_immonex_is_reference', '_inx_lat', '_inx_lng', '_wp_attachment_image_alt', '_immonex_property_xml_source', '_inx_team_agent_primary', '_inx_team_agency_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inx_req_prop_cf_check', '_thumbnail_id', '_inx_is_sale', '_inx_list_map_marker_coords', '_inx_list_map_marker', '_immonex_is_available', '_immonex_is_reference', '_inx_lat', '_inx_lng', '_wp_attachment_image_alt', '_immonex_property_xml_source', '_inx_team_agent_primary', '_inx_team_agency_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inx_req_prop_cf_check', '_thumbnail_id', '_inx_is_sale', '_inx_list_map_marker_coords', '_inx_list_map_marker', '_immonex_is_available', '_immonex_is_reference', '_inx_lat', '_inx_lng', '_wp_attachment_image_alt', '_immonex_property_xml_source', '_inx_team_agent_primary', '_inx_team_agency_id', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%details';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%details';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%details';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%details';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%term_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%term_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%term_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%term_meta';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%property_xml_source';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%property_xml_source';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%property_xml_source';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%property_xml_source';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%file_attachments';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%file_attachments';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%file_attachments';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%file_attachments';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

