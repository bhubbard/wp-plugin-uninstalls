<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nt_page_in_transition');
delete_site_option('nt_page_in_transition');
delete_option('nt_page_out_transition');
delete_site_option('nt_page_out_transition');
delete_option('nt_page_in_duration');
delete_site_option('nt_page_in_duration');
delete_option('nt_page_out_duration');
delete_site_option('nt_page_out_duration');
delete_option('nt_show_loading');
delete_site_option('nt_show_loading');
delete_option('nt_loading_color');
delete_site_option('nt_loading_color');

