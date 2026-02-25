<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('pico_publisher_id');
delete_site_transient('pico_publisher_id');
delete_transient('pico_api_key ');
delete_site_transient('pico_api_key ');
delete_transient('pico_api_key');
delete_site_transient('pico_api_key');
delete_transient('pico_widget_version');
delete_site_transient('pico_widget_version');
delete_transient('pico_gadget_version');
delete_site_transient('pico_gadget_version');

