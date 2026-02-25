<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bs4wp_component_select');
delete_site_option('bs4wp_component_select');
delete_option('bs4wp_component_textarea');
delete_site_option('bs4wp_component_textarea');

