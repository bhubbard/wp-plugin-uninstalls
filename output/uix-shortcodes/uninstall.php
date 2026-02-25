<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uix_sc_opt_cssnewcode');
delete_site_option('uix_sc_opt_cssnewcode');
delete_option('uix_sc_opt_map_api');
delete_site_option('uix_sc_opt_map_api');
delete_option('uix_sc_opt_icontype');
delete_site_option('uix_sc_opt_icontype');
delete_option('uix_sc_opt_style');
delete_site_option('uix_sc_opt_style');

