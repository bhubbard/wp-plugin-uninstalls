<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dyc_customizer_text_before');
delete_site_option('dyc_customizer_text_before');
delete_option('dyc_customizer_text_after');
delete_site_option('dyc_customizer_text_after');
delete_option('dyc_customizer_text_color');
delete_site_option('dyc_customizer_text_color');
delete_option('dyc_customizer_font_size');
delete_site_option('dyc_customizer_font_size');
delete_option('dyc_customizer_font_family');
delete_site_option('dyc_customizer_font_family');
delete_option('dyc_customizer_text_alignment');
delete_site_option('dyc_customizer_text_alignment');
delete_option('dyc_customizer_custom_css');
delete_site_option('dyc_customizer_custom_css');
delete_option('dyc_customizer_start_year');
delete_site_option('dyc_customizer_start_year');
delete_option('dyc_customizer_copyright_symbol');
delete_site_option('dyc_customizer_copyright_symbol');
delete_option('dyc_customizer_company_url');
delete_site_option('dyc_customizer_company_url');
delete_option('dyc_customizer_dismiss_notice');
delete_site_option('dyc_customizer_dismiss_notice');

