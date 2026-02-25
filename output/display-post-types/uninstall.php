<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpt_shortcode_options');
delete_site_option('dpt_shortcode_options');
delete_option('dpt-admin-notice');
delete_site_option('dpt-admin-notice');

// Delete Transients
delete_transient('dpt_custom_fields_with_post_types');
delete_site_transient('dpt_custom_fields_with_post_types');

