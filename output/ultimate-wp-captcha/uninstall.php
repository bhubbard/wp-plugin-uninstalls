<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uwc_setting_data');
delete_site_option('uwc_setting_data');
delete_option('uwc_version');
delete_site_option('uwc_version');

