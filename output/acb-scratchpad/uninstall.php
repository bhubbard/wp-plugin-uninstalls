<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acb_sp_php_code');
delete_site_option('acb_sp_php_code');
delete_option('acb_sp_php_submit_button_type');
delete_site_option('acb_sp_php_submit_button_type');
delete_option('acb_sp_php_installed');
delete_site_option('acb_sp_php_installed');
delete_option('acb_sp_php_installed_enable');
delete_site_option('acb_sp_php_installed_enable');
delete_option('acb_sp_js_code');
delete_site_option('acb_sp_js_code');
delete_option('acb_sp_js_submit_button_type');
delete_site_option('acb_sp_js_submit_button_type');
delete_option('acb_sp_js_result');
delete_site_option('acb_sp_js_result');
delete_option('acb_sp_js_installed');
delete_site_option('acb_sp_js_installed');
delete_option('acb_sp_js_installed_enable');
delete_site_option('acb_sp_js_installed_enable');
delete_option('acb_sp_css_code');
delete_site_option('acb_sp_css_code');
delete_option('acb_sp_css_submit_button_type');
delete_site_option('acb_sp_css_submit_button_type');
delete_option('acb_sp_css_installed');
delete_site_option('acb_sp_css_installed');
delete_option('acb_sp_css_installed_enable');
delete_site_option('acb_sp_css_installed_enable');
delete_option('acb_sp_css_installed_type');
delete_site_option('acb_sp_css_installed_type');

