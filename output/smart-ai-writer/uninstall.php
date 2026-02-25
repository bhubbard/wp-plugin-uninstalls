<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('saiw_openai_key');
delete_site_option('saiw_openai_key');
delete_option('saiw_pexels_key');
delete_site_option('saiw_pexels_key');
delete_option('saiw_pixabay_key');
delete_site_option('saiw_pixabay_key');
delete_option('saiw_openai_model');
delete_site_option('saiw_openai_model');
delete_option('saiw_language');
delete_site_option('saiw_language');
delete_option('saiw_show_footer');
delete_site_option('saiw_show_footer');

