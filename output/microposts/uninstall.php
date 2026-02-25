<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('creomicro_enable_comments');
delete_site_option('creomicro_enable_comments');
delete_option('creomicro_microposts_page_id');
delete_site_option('creomicro_microposts_page_id');
delete_option('creomicro_excerpt_chars');
delete_site_option('creomicro_excerpt_chars');
delete_option('creomicro_per_page');
delete_site_option('creomicro_per_page');
delete_option('creomicro_single_template_choice');
delete_site_option('creomicro_single_template_choice');

