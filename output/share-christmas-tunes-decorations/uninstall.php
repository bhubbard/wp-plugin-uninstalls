<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpchts_gky_music');
delete_site_option('wpchts_gky_music');
delete_option('decoration_type');
delete_site_option('decoration_type');
delete_option('wpchts_gky_image_frame');
delete_site_option('wpchts_gky_image_frame');
delete_option('wpchts_gky_font');
delete_site_option('wpchts_gky_font');
delete_option('xmas_decoration_body_padding_top');
delete_site_option('xmas_decoration_body_padding_top');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

