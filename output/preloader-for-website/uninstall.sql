-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plwao_options', 'plwao_plugin_version', 'plwao_install_notice');

