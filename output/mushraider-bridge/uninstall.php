<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mushraider_api_key');
delete_site_option('mushraider_api_key');
delete_option('mushraider_roles_mapping');
delete_site_option('mushraider_roles_mapping');
delete_option('mushraider_api_url');
delete_site_option('mushraider_api_url');
delete_option('mushraider_css');
delete_site_option('mushraider_css');

