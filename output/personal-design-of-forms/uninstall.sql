-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('select-on', 'custom-select-class', 'custom-select-fone-color', 'custom-select-border-color', 'custom-select-border', 'custom-select-padding', 'custom-select-text-color', 'custom-select-fone-active-color', 'custom-select-text-hover-color', 'custom-select-fone-hover-color', 'custom-select-form-class', 'custom-select-css', 'solass_wp_admin_footer_text');

