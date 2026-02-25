<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oghttp_get_lastpost_time');
delete_site_option('oghttp_get_lastpost_time');

