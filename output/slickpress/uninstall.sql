-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsp_elementor_advance_options', 'wpsp_license_key', 'wpsp_license_status', 'wpsp_qstore_ext_list');
DELETE FROM wp_options WHERE option_name LIKE 'enable_%';

