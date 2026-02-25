-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartyads_zones', 'smarty_new_key_valid', 'smartyads_site_id', 'smartyads_key', 'smartyads_host');

