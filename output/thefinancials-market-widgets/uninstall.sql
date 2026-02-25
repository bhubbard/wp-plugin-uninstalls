-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tfcwidgets4wp_install_ping_sent', 'tfcwidgets4wp_options', 'tfcwidgets4wp_catalog_v2', 'tfcwidgets4wp_catalog_v1');

