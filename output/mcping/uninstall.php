<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcping_ip');
delete_site_option('mcping_ip');
delete_option('mcping_port');
delete_site_option('mcping_port');

