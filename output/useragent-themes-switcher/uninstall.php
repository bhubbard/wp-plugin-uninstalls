<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uat_switcher');
delete_site_option('uat_switcher');
delete_option('useragentthemesswitcher_settings');
delete_site_option('useragentthemesswitcher_settings');

