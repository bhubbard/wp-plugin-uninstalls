-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('izcrmef_app_conf', 'izcrmef_db_version', 'izcrmef_installed', 'izcrmef_version', 'btcbi_elementor_test');

