<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swdc_disable_right_click');
delete_site_option('swdc_disable_right_click');
delete_option('swdc_disable_f12');
delete_site_option('swdc_disable_f12');
delete_option('swdc_disable_copy');
delete_site_option('swdc_disable_copy');
delete_option('swdc_custom_message');
delete_site_option('swdc_custom_message');
delete_option('swdc_disable_shortcuts');
delete_site_option('swdc_disable_shortcuts');

