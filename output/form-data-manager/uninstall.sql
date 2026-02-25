-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfdm_plugin_tm_fr_rtg', 'wpfdm_plugin_activated');

