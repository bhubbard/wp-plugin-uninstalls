<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ae_admin_customizer_options');
delete_site_option('ae_admin_customizer_options');
delete_option('ae_admin_customizer_color_options');
delete_site_option('ae_admin_customizer_color_options');
delete_option('ae_admin_customizer_logreg_options');
delete_site_option('ae_admin_customizer_logreg_options');
delete_option('ae_admin_customizer_custom_css');
delete_site_option('ae_admin_customizer_custom_css');

