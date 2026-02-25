<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('njt_nofi_review');
delete_site_option('njt_nofi_review');
delete_option('njt_nofi_open_after_day');
delete_site_option('njt_nofi_open_after_day');
delete_option('njt_nofi_text_wpml_translate');
delete_site_option('njt_nofi_text_wpml_translate');
delete_option('njt_nofi_text_mobile_wpml_translate');
delete_site_option('njt_nofi_text_mobile_wpml_translate');
delete_option('njt_nofi_lb_text_wpml_translate');
delete_site_option('njt_nofi_lb_text_wpml_translate');
delete_option('njt_nofi_lb_text_mobile_wpml_translate');
delete_site_option('njt_nofi_lb_text_mobile_wpml_translate');
delete_option('njt_nofi_lb_url_wpml_translate');
delete_site_option('njt_nofi_lb_url_wpml_translate');
delete_option('njt_nofi_lb_url_mobile_wpml_translate');
delete_site_option('njt_nofi_lb_url_mobile_wpml_translate');
delete_option('njt_is_override_theme_mod');
delete_site_option('njt_is_override_theme_mod');
delete_option('njt_is_override_theme_mod_ver14');
delete_site_option('njt_is_override_theme_mod_ver14');
delete_option('njt_nofi_first_time_active');
delete_site_option('njt_nofi_first_time_active');
delete_option('njt_nofi_version');
delete_site_option('njt_nofi_version');

