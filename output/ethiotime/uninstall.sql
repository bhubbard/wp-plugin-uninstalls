-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('et_dt_templates', 'et_dt_shortcodes', 'et_dt_shortcode_styles', 'et_dt_custom_css');

