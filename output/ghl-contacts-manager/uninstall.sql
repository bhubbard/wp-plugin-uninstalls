-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghlcoma_api_key', 'ghlcoma_location_id', 'ghlcoma_contacts_cache', 'ghlcoma_opportunities_cache', 'ghlcoma_pipelines_cache');

