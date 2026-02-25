<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customization_for_wp_seo_options');
delete_site_option('customization_for_wp_seo_options');

