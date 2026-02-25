<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sassify');
delete_site_option('sassify');

// Delete Transients
delete_transient('sassify_filemtimes');
delete_site_transient('sassify_filemtimes');
delete_transient('sassify_variables_signature');
delete_site_transient('sassify_variables_signature');

