<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cets_default_user_role_setup');
delete_site_option('cets_default_user_role_setup');
delete_option('cets_default_user_role_options');
delete_site_option('cets_default_user_role_options');
delete_option('dashboard_blog');
delete_site_option('dashboard_blog');
delete_option('default_user_role');
delete_site_option('default_user_role');

