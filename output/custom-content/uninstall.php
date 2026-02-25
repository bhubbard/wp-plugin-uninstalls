<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_type1');
delete_site_option('content_type1');
delete_option('content_type2');
delete_site_option('content_type2');

