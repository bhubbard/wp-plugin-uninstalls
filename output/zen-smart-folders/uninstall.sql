-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zensf_activity_log', 'zensf_options', 'zensf_remove_data_on_uninstall', 'zensf_version', 'zensf_installed_on');

