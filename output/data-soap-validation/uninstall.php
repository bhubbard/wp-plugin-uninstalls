<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dsv_token');
delete_site_option('dsv_token');
delete_option('dsv_email_validation');
delete_site_option('dsv_email_validation');
delete_option('dsv_telephone_validation');
delete_site_option('dsv_telephone_validation');
delete_option('dsv_password');
delete_site_option('dsv_password');
delete_option('dsv_error');
delete_site_option('dsv_error');

