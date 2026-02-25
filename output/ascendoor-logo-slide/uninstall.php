<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ascendoor_logo_slide');
delete_site_option('_ascendoor_logo_slide');
delete_option('_ascendoor_logo_slide_style');
delete_site_option('_ascendoor_logo_slide_style');

