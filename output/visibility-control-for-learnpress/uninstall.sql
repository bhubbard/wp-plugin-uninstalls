-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grassblade_tincan_endpoint', 'grassblade_free_addons', 'grassblade_addons', 'visibility_control_for_learnpress');

