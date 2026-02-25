<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aw_title');
delete_site_option('aw_title');
delete_option('aw_placeholder');
delete_site_option('aw_placeholder');
delete_option('aw_incorrect');
delete_site_option('aw_incorrect');
delete_option('aw_already_exist');
delete_site_option('aw_already_exist');
delete_option('aw_register_success');
delete_site_option('aw_register_success');
delete_option('aw_header_name');
delete_site_option('aw_header_name');
delete_option('aw_header_email');
delete_site_option('aw_header_email');

