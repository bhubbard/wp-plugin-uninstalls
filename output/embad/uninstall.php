<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embad_status');
delete_site_option('embad_status');
delete_option('embad_pid');
delete_site_option('embad_pid');
delete_option('embad_wsid');
delete_site_option('embad_wsid');

