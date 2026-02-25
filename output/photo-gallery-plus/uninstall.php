<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('photo-gallery-plus-wizard-set-up');
delete_site_option('photo-gallery-plus-wizard-set-up');
delete_option('pgp_wpgeeks_site_id');
delete_site_option('pgp_wpgeeks_site_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('photo-gallery-plus-version-number');
delete_site_option('photo-gallery-plus-version-number');
delete_option('photo_gallery_plus_do_activation_redirect');
delete_site_option('photo_gallery_plus_do_activation_redirect');

