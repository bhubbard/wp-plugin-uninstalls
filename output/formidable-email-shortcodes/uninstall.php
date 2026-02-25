<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssfrm_notify_options');
delete_site_option('ssfrm_notify_options');
delete_option('ssfrm_notify_version');
delete_site_option('ssfrm_notify_version');

