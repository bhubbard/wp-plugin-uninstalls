<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_option_name');
delete_site_option('easy_option_name');
delete_option('easy_option_logo');
delete_site_option('easy_option_logo');
delete_option('easy_option_numOps');
delete_site_option('easy_option_numOps');
delete_option('easy_option_table');
delete_site_option('easy_option_table');
delete_option('easy_page_options');
delete_site_option('easy_page_options');

