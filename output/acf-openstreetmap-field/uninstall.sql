-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_osm_provider_tokens', 'acf_osm_providers', 'acf_osm_proxy', 'acf-openstreetmap-field_version');

