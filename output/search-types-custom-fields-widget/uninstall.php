<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcf-custom-types');
delete_site_option('wpcf-custom-types');
delete_option('wpcf-fields');
delete_site_option('wpcf-fields');
delete_option('wpcf-custom-taxonomies');
delete_site_option('wpcf-custom-taxonomies');

