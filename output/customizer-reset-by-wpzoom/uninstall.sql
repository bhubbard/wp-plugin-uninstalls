-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('generate_settings', 'generate_dynamic_css_output', 'generate_dynamic_css_cached_version');
DELETE FROM wp_options WHERE option_name LIKE 'customizer_reset_backup_%';

