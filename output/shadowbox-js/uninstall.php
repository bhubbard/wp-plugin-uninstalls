<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shadowbox-js-missing-src');
delete_site_option('shadowbox-js-missing-src');
delete_option('shadowbox');
delete_site_option('shadowbox');

