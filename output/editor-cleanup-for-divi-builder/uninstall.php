<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fdp_divi_builder');
delete_site_option('fdp_divi_builder');

// Delete Transients
delete_transient('fdp-divi-builder-notice-succ');
delete_site_transient('fdp-divi-builder-notice-succ');
delete_transient('fdp-divi-builder-notice-fail');
delete_site_transient('fdp-divi-builder-notice-fail');

