<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fdp_elementor');
delete_site_option('fdp_elementor');

// Delete Transients
delete_transient('fdp-elementor-notice-succ');
delete_site_transient('fdp-elementor-notice-succ');
delete_transient('fdp-elementor-notice-fail');
delete_site_transient('fdp-elementor-notice-fail');

