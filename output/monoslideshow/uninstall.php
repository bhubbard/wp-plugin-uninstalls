<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('monoslideshow-preset');
delete_site_option('monoslideshow-preset');
delete_option('monoslideshow-width');
delete_site_option('monoslideshow-width');
delete_option('monoslideshow-height');
delete_site_option('monoslideshow-height');
delete_option('monoslideshow-resize');
delete_site_option('monoslideshow-resize');

