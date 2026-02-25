-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plst_aiseo_geo_api_provider', 'plst_aiseo_geo_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_plst_aiseo_geo_entity_url', '_plst_aiseo_geo_summary', '_plst_aiseo_geo_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('_plst_aiseo_geo_entity_url', '_plst_aiseo_geo_summary', '_plst_aiseo_geo_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('_plst_aiseo_geo_entity_url', '_plst_aiseo_geo_summary', '_plst_aiseo_geo_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_plst_aiseo_geo_entity_url', '_plst_aiseo_geo_summary', '_plst_aiseo_geo_hidden');

