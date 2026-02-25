-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loading_page_options', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_exclude_mode', 'elementor_maintenance_mode_exclude_roles', 'loading_page_video_tutorial');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

