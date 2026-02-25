<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('powerwaf_settings');
delete_site_option('powerwaf_settings');
delete_option('powerwafcdn_last_update_time');
delete_site_option('powerwafcdn_last_update_time');
delete_option('powerwafcdn_last_update_url');
delete_site_option('powerwafcdn_last_update_url');

