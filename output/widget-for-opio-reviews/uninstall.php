<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opio_active');
delete_site_option('opio_active');
delete_option('widget_custom_html');
delete_site_option('widget_custom_html');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('opio_debug_mode');
delete_site_option('opio_debug_mode');

