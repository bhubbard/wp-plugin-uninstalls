<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alphazc_technology_gallery_settings');
delete_site_option('alphazc_technology_gallery_settings');

