<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cssor_style');
delete_site_option('cssor_style');
delete_option('cssor_minify');
delete_site_option('cssor_minify');
delete_option('cssor_load');
delete_site_option('cssor_load');
delete_option('cssor_dependency');
delete_site_option('cssor_dependency');
delete_option('cssor_method');
delete_site_option('cssor_method');

