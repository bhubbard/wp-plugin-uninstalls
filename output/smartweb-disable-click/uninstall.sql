-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swdc_disable_right_click', 'swdc_disable_f12', 'swdc_disable_copy', 'swdc_custom_message', 'swdc_disable_shortcuts');

