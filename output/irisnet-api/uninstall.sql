-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('irisnet_plugin_licenses', 'irisnet_plugin_rules', 'irisnet_plugin_version');

