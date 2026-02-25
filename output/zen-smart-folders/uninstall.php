<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zensf_activity_log');
delete_site_option('zensf_activity_log');
delete_option('zensf_options');
delete_site_option('zensf_options');
delete_option('zensf_remove_data_on_uninstall');
delete_site_option('zensf_remove_data_on_uninstall');
delete_option('zensf_version');
delete_site_option('zensf_version');
delete_option('zensf_installed_on');
delete_site_option('zensf_installed_on');

