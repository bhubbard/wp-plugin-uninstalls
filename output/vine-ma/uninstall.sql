-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vine-plugin-options', 'vine_web_forms_cache', 'vine_multiorg_status_cache');

