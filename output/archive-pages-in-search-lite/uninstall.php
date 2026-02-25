<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mkapis_lite_settings_options');
delete_site_option('mkapis_lite_settings_options');
delete_option('mkapis_lite_archive_names');
delete_site_option('mkapis_lite_archive_names');
delete_option('mkapis_lite_all_archive_names');
delete_site_option('mkapis_lite_all_archive_names');
delete_option('mkapis_lite_old_term_names');
delete_site_option('mkapis_lite_old_term_names');

