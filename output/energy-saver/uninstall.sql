-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sa_es_overlay_settings', 'sa_es_optimize_settings');

