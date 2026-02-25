<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lightning_theme_options');
delete_site_option('lightning_theme_options');
delete_option('lightning_design_skin');
delete_site_option('lightning_design_skin');

