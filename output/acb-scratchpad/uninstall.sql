-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acb_sp_php_code', 'acb_sp_php_submit_button_type', 'acb_sp_php_installed', 'acb_sp_php_installed_enable', 'acb_sp_js_code', 'acb_sp_js_submit_button_type', 'acb_sp_js_result', 'acb_sp_js_installed', 'acb_sp_js_installed_enable', 'acb_sp_css_code', 'acb_sp_css_submit_button_type', 'acb_sp_css_installed', 'acb_sp_css_installed_enable', 'acb_sp_css_installed_type');

