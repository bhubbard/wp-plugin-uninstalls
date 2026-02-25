<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('capqsh_download_btn_bg_color');
delete_site_option('capqsh_download_btn_bg_color');
delete_option('capqsh_download_btn_text_color');
delete_site_option('capqsh_download_btn_text_color');
delete_option('capqsh_enable_image_download');
delete_site_option('capqsh_enable_image_download');
delete_option('capqsh_enable_shortcode');
delete_site_option('capqsh_enable_shortcode');

