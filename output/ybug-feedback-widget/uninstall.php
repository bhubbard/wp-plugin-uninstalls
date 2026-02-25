<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ybug');
delete_site_option('ybug');
delete_option('Ybug_Activated');
delete_site_option('Ybug_Activated');

