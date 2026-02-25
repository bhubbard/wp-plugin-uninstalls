<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfbx_settings');
delete_site_option('sfbx_settings');
delete_option('sfbx_appkey_valid');
delete_site_option('sfbx_appkey_valid');

