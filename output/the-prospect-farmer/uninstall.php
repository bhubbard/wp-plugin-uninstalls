<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theprospectfarmer_data');
delete_site_option('theprospectfarmer_data');
delete_option('theprospectfarmer_flags');
delete_site_option('theprospectfarmer_flags');

