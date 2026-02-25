<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emcs_activation_time');
delete_site_option('emcs_activation_time');
delete_option('emcs_display_greeting');
delete_site_option('emcs_display_greeting');
delete_option('emcs_encryption_key');
delete_site_option('emcs_encryption_key');
delete_option('emcs_settings');
delete_site_option('emcs_settings');

