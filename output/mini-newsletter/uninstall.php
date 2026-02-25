<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mn_title');
delete_site_option('mn_title');
delete_option('mn_placeholder');
delete_site_option('mn_placeholder');
delete_option('mn_incorrect');
delete_site_option('mn_incorrect');
delete_option('mn_already_exist');
delete_site_option('mn_already_exist');
delete_option('mn_register_success');
delete_site_option('mn_register_success');
delete_option('mn_header_name');
delete_site_option('mn_header_name');
delete_option('mn_header_email');
delete_site_option('mn_header_email');

