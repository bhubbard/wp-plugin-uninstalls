<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('givecloud_settings_fields');
delete_site_option('givecloud_settings_fields');

// Delete Transients
delete_transient('givecloud_api_is_connected');
delete_site_transient('givecloud_api_is_connected');
delete_transient('givecloud_fundraising_forms');
delete_site_transient('givecloud_fundraising_forms');

