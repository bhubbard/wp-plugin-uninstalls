<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logo_items');
delete_site_option('logo_items');
delete_option('mi-logo-slider-options');
delete_site_option('mi-logo-slider-options');

