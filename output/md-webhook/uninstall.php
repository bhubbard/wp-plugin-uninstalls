<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdwh_active');
delete_site_option('mdwh_active');
delete_option('mdwh_autokeyword');
delete_site_option('mdwh_autokeyword');
delete_option('mdwh_token');
delete_site_option('mdwh_token');
delete_option('mdwh_zip_url');
delete_site_option('mdwh_zip_url');
delete_option('mdwh_username');
delete_site_option('mdwh_username');
delete_option('mdwh_password');
delete_site_option('mdwh_password');
delete_option('mdwh_tags');
delete_site_option('mdwh_tags');
delete_option('mdwh_autocat');
delete_site_option('mdwh_autocat');

