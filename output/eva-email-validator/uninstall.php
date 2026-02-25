<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eva-api-error');
delete_site_option('eva-api-error');
delete_option('eva_settings');
delete_site_option('eva_settings');
delete_option('eva-api-key-invalid');
delete_site_option('eva-api-key-invalid');

