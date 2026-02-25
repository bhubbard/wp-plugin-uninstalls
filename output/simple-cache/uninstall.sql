-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_simple_cache', 'sc_cant_write', 'active_sitewide_plugins');

