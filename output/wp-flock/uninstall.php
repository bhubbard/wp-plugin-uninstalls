<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fl_groups');
delete_site_option('fl_groups');
delete_option('fl_installed');
delete_site_option('fl_installed');

