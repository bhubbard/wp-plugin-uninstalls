-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ae_admin_customizer_options', 'ae_admin_customizer_color_options', 'ae_admin_customizer_logreg_options', 'ae_admin_customizer_custom_css');

