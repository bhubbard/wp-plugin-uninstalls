<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdwp_media_button');
delete_site_option('cdwp_media_button');
delete_option('cdwp_default_style');
delete_site_option('cdwp_default_style');

