<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ambikly_plugin_version');
delete_site_option('ambikly_plugin_version');
delete_option('ambikly_install_date');
delete_site_option('ambikly_install_date');
delete_option('ambikly_plugin_db_version');
delete_site_option('ambikly_plugin_db_version');

// Delete Transients
delete_transient('_ambikly_activation_redirect');
delete_site_transient('_ambikly_activation_redirect');

