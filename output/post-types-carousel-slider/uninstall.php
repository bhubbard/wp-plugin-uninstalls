<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_setting');
delete_site_option('ps_setting');
delete_option('ps_setting_mousewheel');
delete_site_option('ps_setting_mousewheel');
delete_option('ps_setting_swipe');
delete_site_option('ps_setting_swipe');

