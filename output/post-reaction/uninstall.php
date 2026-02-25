<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cprSettings');
delete_site_option('cprSettings');
delete_option('cprPostTypes');
delete_site_option('cprPostTypes');

