<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watchful_app_settings_changed_files');
delete_site_option('watchful_app_settings_changed_files');
delete_option('watchful_changed_files_do_activation_redirect');
delete_site_option('watchful_changed_files_do_activation_redirect');

