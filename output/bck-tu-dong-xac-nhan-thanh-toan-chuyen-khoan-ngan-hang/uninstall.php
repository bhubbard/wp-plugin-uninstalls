<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpay');
delete_site_option('mpay');
delete_option('mpay_oauth');
delete_site_option('mpay_oauth');
delete_option('secure_token');
delete_site_option('secure_token');

