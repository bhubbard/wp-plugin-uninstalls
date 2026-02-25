<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qhtp_oauth');
delete_site_option('qhtp_oauth');
delete_option('qhtp');
delete_site_option('qhtp');

