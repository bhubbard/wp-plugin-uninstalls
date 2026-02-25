<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yg_option_name');
delete_site_option('yg_option_name');
delete_option('yg_option_name2');
delete_site_option('yg_option_name2');
delete_option('yg_option_name3');
delete_site_option('yg_option_name3');

