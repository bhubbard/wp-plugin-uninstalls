-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('statsfa_api_key', 'statsfa_delete_on_uninstall');

