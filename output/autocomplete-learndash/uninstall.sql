-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grassblade_tincan_endpoint', 'grassblade_free_addons', 'grassblade_addons', 'autocomplete_learndash');

