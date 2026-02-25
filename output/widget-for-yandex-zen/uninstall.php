<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zw_option_name');
delete_site_option('zw_option_name');
delete_option('widget_for_zen_data');
delete_site_option('widget_for_zen_data');

