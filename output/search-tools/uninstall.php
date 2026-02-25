<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seto_db_version');
delete_site_option('seto_db_version');
delete_option('seto_plugin_activation_date');
delete_site_option('seto_plugin_activation_date');
delete_option('seto_free_options');
delete_site_option('seto_free_options');
delete_option('seto_disable_reviews');
delete_site_option('seto_disable_reviews');
delete_option('seto_options');
delete_site_option('seto_options');

