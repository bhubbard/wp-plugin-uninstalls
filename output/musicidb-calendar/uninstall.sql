-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('musicidb_options', 'musicidb_integration_entity_responses');

