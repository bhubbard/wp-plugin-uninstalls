<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_beta_tester');
delete_site_option('wp_beta_tester');
delete_option('wp_beta_tester_core');
delete_site_option('wp_beta_tester_core');
delete_option('wp_beta_tester_extras');
delete_site_option('wp_beta_tester_extras');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('current_wp_release');
delete_site_transient('current_wp_release');

