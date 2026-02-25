<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('know__events__button_styles');
delete_site_option('know__events__button_styles');
delete_option('know__events__button_classes');
delete_site_option('know__events__button_classes');
delete_option('know__events__alert_container_styles');
delete_site_option('know__events__alert_container_styles');
delete_option('know__events__alert_container_classes');
delete_site_option('know__events__alert_container_classes');
delete_option('know__events__alert_heading_styles');
delete_site_option('know__events__alert_heading_styles');
delete_option('know__events__alert_heading_classes');
delete_site_option('know__events__alert_heading_classes');
delete_option('know__events__login_button_classes');
delete_site_option('know__events__login_button_classes');
delete_option('know__events__login_button_styles');
delete_site_option('know__events__login_button_styles');
delete_option('know__events__payment_process_button_classes');
delete_site_option('know__events__payment_process_button_classes');
delete_option('know__events__payment_process_button_styles');
delete_site_option('know__events__payment_process_button_styles');
delete_option('know--events--settings-group');
delete_site_option('know--events--settings-group');

