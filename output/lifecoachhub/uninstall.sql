-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifecoachhub_api_key', 'lifecoachhub_connection_status', 'lifecoachhub_connected_at');

