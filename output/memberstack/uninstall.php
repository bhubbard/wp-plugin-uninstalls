<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('memberstack_wp_app_id');
delete_site_option('memberstack_wp_app_id');
delete_option('memberstack_app_id');
delete_site_option('memberstack_app_id');
delete_option('memberstack_wp_gated_content');
delete_site_option('memberstack_wp_gated_content');

// Delete Transients
delete_transient('memberstack_wp_gated_content');
delete_site_transient('memberstack_wp_gated_content');

