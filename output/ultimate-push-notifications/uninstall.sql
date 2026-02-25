-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('upn_db_version', 'upn_plugin_version', 'upn_plugin_install_date');
DELETE FROM wp_options WHERE option_name LIKE '%ed_Activated';

