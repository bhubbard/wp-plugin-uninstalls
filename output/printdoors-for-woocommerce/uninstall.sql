-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('printdoors_domain', 'printdoors_code', 'printdoors_access_key', 'printdoors_store_id');

