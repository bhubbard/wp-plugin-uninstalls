<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsd_do_activation_redirect');
delete_site_option('hsd_do_activation_redirect');
delete_option('hsd_current_version');
delete_site_option('hsd_current_version');

