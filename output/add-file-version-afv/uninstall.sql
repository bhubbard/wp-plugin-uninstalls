-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afv_auto_ver', 'afv_ver_target_file', 'afv_manual_ver', 'afv_manual_ver_input');

