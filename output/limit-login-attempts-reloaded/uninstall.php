<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('limit_login_allow_local_options');
delete_site_option('limit_login_allow_local_options');
delete_option('limit_login_use_local_options');
delete_site_option('limit_login_use_local_options');
delete_option('site_name');
delete_site_option('site_name');
delete_option('limit_login_app_config');
delete_site_option('limit_login_app_config');

// Delete Transients
delete_transient('llar_dashboard_redirect');
delete_site_transient('llar_dashboard_redirect');

