-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_addons_settings', 'recently_activated', 'gf_directory_oid', 'kws_gf_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_grid';
DELETE FROM wp_options WHERE option_name LIKE '%_showadminonly';

