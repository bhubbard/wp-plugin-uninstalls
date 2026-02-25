<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('max_bricks_elements');
delete_site_option('max_bricks_elements');
delete_option('mab_elements_settings');
delete_site_option('mab_elements_settings');
delete_option('mab_override_ms');
delete_site_option('mab_override_ms');
delete_option('mab_multisite_settings_migrated');
delete_site_option('mab_multisite_settings_migrated');

