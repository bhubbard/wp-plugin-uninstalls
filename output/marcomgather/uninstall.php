<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcc_gather_app_url');
delete_site_option('mcc_gather_app_url');
delete_option('mcc_gather_default_user');
delete_site_option('mcc_gather_default_user');

