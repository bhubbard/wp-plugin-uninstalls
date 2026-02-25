<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('always_valid_lightbox_add_jquery_library');
delete_site_option('always_valid_lightbox_add_jquery_library');
delete_option('always_valid_lightbox_add_attributes');
delete_site_option('always_valid_lightbox_add_attributes');
delete_option('always_valid_lightbox_attribute_to_add');
delete_site_option('always_valid_lightbox_attribute_to_add');
delete_option('always_valid_lightbox_css');
delete_site_option('always_valid_lightbox_css');

