<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('service_boxes_widget_text_icon');
delete_site_option('service_boxes_widget_text_icon');
delete_option('service_boxs_widget_text_icon');
delete_site_option('service_boxs_widget_text_icon');

