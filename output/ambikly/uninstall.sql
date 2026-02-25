-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ambikly_plugin_version', 'ambikly_install_date', 'ambikly_plugin_db_version', '_ambikly_activation_redirect');

