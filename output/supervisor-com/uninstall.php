<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supervisorcom_v1_secret');
delete_site_option('supervisorcom_v1_secret');
delete_option('supervisorcom_v1_store');
delete_site_option('supervisorcom_v1_store');

