<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('horizontal-scrolling-announcements');
delete_site_option('horizontal-scrolling-announcements');
delete_option('horizontal-scrolling-roles');
delete_site_option('horizontal-scrolling-roles');

// Delete Transients
delete_transient('_hsas_activation_redirect');
delete_site_transient('_hsas_activation_redirect');

