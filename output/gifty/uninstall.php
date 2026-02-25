<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gifty_module_code');
delete_site_option('gifty_module_code');
delete_option('gifty_module_icon_visibility');
delete_site_option('gifty_module_icon_visibility');

