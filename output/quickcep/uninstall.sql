-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickcep_settings', 'woocommerce_quickcep_version', 'is_quickcep_plugin_outdated');

