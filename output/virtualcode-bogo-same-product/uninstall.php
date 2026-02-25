<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vc_bogo_activation_error');
delete_site_option('vc_bogo_activation_error');
delete_option('vc_bogo_enabled');
delete_site_option('vc_bogo_enabled');
delete_option('vc_bogo_selected_products');
delete_site_option('vc_bogo_selected_products');
delete_option('vc_bogo_scope');
delete_site_option('vc_bogo_scope');

