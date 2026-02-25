<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cn_verification');
delete_site_option('cn_verification');
delete_option('cn_token');
delete_site_option('cn_token');
delete_option('cn_verify_widget_key');
delete_site_option('cn_verify_widget_key');

