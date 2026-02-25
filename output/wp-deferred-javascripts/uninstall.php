<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdjs_do_not_defer_opt');
delete_site_option('wdjs_do_not_defer_opt');

