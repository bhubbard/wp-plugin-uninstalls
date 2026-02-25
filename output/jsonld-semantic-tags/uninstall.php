<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setting_a');
delete_site_option('setting_a');
delete_option('setting_b');
delete_site_option('setting_b');

