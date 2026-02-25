-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gv-excel-export_option', 'gravityformsaddon_gravityview_app_settings');

