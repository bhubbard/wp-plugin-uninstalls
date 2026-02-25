<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setting_1');
delete_site_option('setting_1');
delete_option('setting_2');
delete_site_option('setting_2');

