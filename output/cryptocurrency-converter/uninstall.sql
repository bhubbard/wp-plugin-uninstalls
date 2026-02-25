-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccc_option_api', 'ccc_option_widget_title', 'ccc_option_theme', 'ccc_option_custom_color', 'ccc_option_amount_label', 'ccc_option_from_label', 'ccc_option_to_label', 'ccc_option_result_label', 'ccc_option_default_from', 'ccc_option_default_to', 'ccc_options_widget_title');

