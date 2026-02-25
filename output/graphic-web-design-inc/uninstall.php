<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gwd_email_to');
delete_site_option('gwd_email_to');
delete_option('gwd_app_token');
delete_site_option('gwd_app_token');

