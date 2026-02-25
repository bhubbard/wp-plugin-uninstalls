-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aip_settings', 'oizuled-adsense-unit-a', 'oizuled-adsense-unit-b', 'oizuled-adsense-unit-c');

