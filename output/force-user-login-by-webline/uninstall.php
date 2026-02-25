<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fl_version');
delete_site_option('fl_version');
delete_option('fl_activation_date');
delete_site_option('fl_activation_date');
delete_option('force-user-login-options');
delete_site_option('force-user-login-options');

