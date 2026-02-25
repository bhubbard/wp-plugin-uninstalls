-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grp_configuration_settings', 'grp_global_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

