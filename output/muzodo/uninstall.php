<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muzodocachetimestamp');
delete_site_option('muzodocachetimestamp');
delete_option('muzodocachedata');
delete_site_option('muzodocachedata');

