-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgreeks_plugin_cpt', 'wpgreeks_plugin_tax', 'wpgreeks_plugin');

