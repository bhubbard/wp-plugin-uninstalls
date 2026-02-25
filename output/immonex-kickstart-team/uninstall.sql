-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inx_team_agency_id', '_inx_team_agent_primary', '_inx_team_agents', '_immonex_is_demo', '_inx_lat', '_inx_lng', '_inx_property_id', '_openimmo_obid', '_immonex_is_reference', '_immonex_is_available', '_immonex_property_xml_source', '_openimmo_anid', '_inx_primary_price', 'inx_team_agency_id', 'inx_team_agent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inx_team_agency_id', '_inx_team_agent_primary', '_inx_team_agents', '_immonex_is_demo', '_inx_lat', '_inx_lng', '_inx_property_id', '_openimmo_obid', '_immonex_is_reference', '_immonex_is_available', '_immonex_property_xml_source', '_openimmo_anid', '_inx_primary_price', 'inx_team_agency_id', 'inx_team_agent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inx_team_agency_id', '_inx_team_agent_primary', '_inx_team_agents', '_immonex_is_demo', '_inx_lat', '_inx_lng', '_inx_property_id', '_openimmo_obid', '_immonex_is_reference', '_immonex_is_available', '_immonex_property_xml_source', '_openimmo_anid', '_inx_primary_price', 'inx_team_agency_id', 'inx_team_agent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inx_team_agency_id', '_inx_team_agent_primary', '_inx_team_agents', '_immonex_is_demo', '_inx_lat', '_inx_lng', '_inx_property_id', '_openimmo_obid', '_immonex_is_reference', '_immonex_is_available', '_immonex_property_xml_source', '_openimmo_anid', '_inx_primary_price', 'inx_team_agency_id', 'inx_team_agent_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%s';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

