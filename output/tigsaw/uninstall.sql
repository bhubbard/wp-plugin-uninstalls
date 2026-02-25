-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tigsaw_activation_redirect', 'tigsaw_container_id', 'tigsaw_script_enabled');

