<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jmh_pew_page_excerpt_length');
delete_site_option('jmh_pew_page_excerpt_length');
delete_option('jmh_pew_page_id');
delete_site_option('jmh_pew_page_id');
delete_option('jmh_pew_link_title');
delete_site_option('jmh_pew_link_title');
delete_option('jmh_pew_append_link');
delete_site_option('jmh_pew_append_link');
delete_option('jmh_pew_link_label');
delete_site_option('jmh_pew_link_label');

