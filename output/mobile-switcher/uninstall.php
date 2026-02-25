<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobile_switcher_enabled');
delete_site_option('mobile_switcher_enabled');
delete_option('ms_desktop_template');
delete_site_option('ms_desktop_template');
delete_option('ms_mobile_template');
delete_site_option('ms_mobile_template');
delete_option('ms_tablet_template');
delete_site_option('ms_tablet_template');

