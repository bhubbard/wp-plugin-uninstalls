<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qmmode_enable_maintenance');
delete_site_option('qmmode_enable_maintenance');
delete_option('qmmode_custom_message');
delete_site_option('qmmode_custom_message');
delete_option('qmmode_custom_title');
delete_site_option('qmmode_custom_title');

