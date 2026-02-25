<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_tags_insert_header');
delete_site_option('easy_tags_insert_header');
delete_option('easy_tags_header_css');
delete_site_option('easy_tags_header_css');
delete_option('easy_tags_fb');
delete_site_option('easy_tags_fb');
delete_option('easy_tags_gtm_head');
delete_site_option('easy_tags_gtm_head');
delete_option('easy_tags_gtm_footer');
delete_site_option('easy_tags_gtm_footer');
delete_option('easy_tags_insert_footer');
delete_site_option('easy_tags_insert_footer');

