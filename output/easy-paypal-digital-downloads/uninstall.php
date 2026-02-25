<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpepdd_settingsoptions');
delete_site_option('wpepdd_settingsoptions');
delete_option('wpepdd_my_plugin_notice_shown');
delete_site_option('wpepdd_my_plugin_notice_shown');

