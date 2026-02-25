<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsala_avatar_size');
delete_site_option('bsala_avatar_size');
delete_option('bsala_custom_title');
delete_site_option('bsala_custom_title');
delete_option('bsala_min_avatar_no');
delete_site_option('bsala_min_avatar_no');
delete_option('bsala_max_avatar_no');
delete_site_option('bsala_max_avatar_no');
delete_option('bsala_custom_style');
delete_site_option('bsala_custom_style');
delete_option('bsala_text_for_more');
delete_site_option('bsala_text_for_more');
delete_option(' bsala_avatar_size ');
delete_site_option(' bsala_avatar_size ');
delete_option(' bsala_custom_title ');
delete_site_option(' bsala_custom_title ');
delete_option(' bsala_min_avatar_no ');
delete_site_option(' bsala_min_avatar_no ');
delete_option(' bsala_max_avatar_no ');
delete_site_option(' bsala_max_avatar_no ');
delete_option(' bsala_text_for_more ');
delete_site_option(' bsala_text_for_more ');

