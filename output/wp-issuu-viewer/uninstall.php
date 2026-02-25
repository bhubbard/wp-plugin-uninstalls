<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_issuu_user');
delete_site_option('wp_issuu_user');
delete_option('wp_issuu_api_key');
delete_site_option('wp_issuu_api_key');
delete_option('wp_issuu_api_sign');
delete_site_option('wp_issuu_api_sign');
delete_option('wp_issuu_height');
delete_site_option('wp_issuu_height');
delete_option('wp_issuu_width');
delete_site_option('wp_issuu_width');
delete_option('wp_issuu_version');
delete_site_option('wp_issuu_version');
delete_option('wp_issuu_fs');
delete_site_option('wp_issuu_fs');
delete_option('wp_issuu_flipbtn');
delete_site_option('wp_issuu_flipbtn');
delete_option('wp_issuu_layout');
delete_site_option('wp_issuu_layout');
delete_option('wp_issuu_pdf');
delete_site_option('wp_issuu_pdf');
delete_option('wp_issuu_odt');
delete_site_option('wp_issuu_odt');
delete_option('wp_issuu_doc');
delete_site_option('wp_issuu_doc');
delete_option('wp_issuu_wpd');
delete_site_option('wp_issuu_wpd');
delete_option('wp_issuu_sxw');
delete_site_option('wp_issuu_sxw');
delete_option('wp_issuu_sxi');
delete_site_option('wp_issuu_sxi');
delete_option('wp_issuu_rtf');
delete_site_option('wp_issuu_rtf');
delete_option('wp_issuu_odp');
delete_site_option('wp_issuu_odp');
delete_option('wp_issuu_ppt');
delete_site_option('wp_issuu_ppt');
delete_option('wp_issuu_bgcolor');
delete_site_option('wp_issuu_bgcolor');

