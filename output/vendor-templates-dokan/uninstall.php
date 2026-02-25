<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vendor_templates_options');
delete_site_option('vendor_templates_options');
delete_option('vendor_template_options');
delete_site_option('vendor_template_options');
delete_option('hide_cart_option');
delete_site_option('hide_cart_option');
delete_option('vtfd_remove_split_shipping');
delete_site_option('vtfd_remove_split_shipping');
delete_option('vtfd_templates_enabled');
delete_site_option('vtfd_templates_enabled');

// Delete Transients
delete_transient('vendor_templates_settings_redirect');
delete_site_transient('vendor_templates_settings_redirect');

