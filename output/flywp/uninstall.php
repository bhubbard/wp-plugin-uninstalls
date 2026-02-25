<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flywp_email_settings');
delete_site_option('flywp_email_settings');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

