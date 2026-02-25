<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PAWPY_popup_alert_display_news');
delete_site_option('PAWPY_popup_alert_display_news');
delete_option('PAWPY_popup_alert_display_color');
delete_site_option('PAWPY_popup_alert_display_color');
delete_option('PAWPY_popup_alert_post_type');
delete_site_option('PAWPY_popup_alert_post_type');

