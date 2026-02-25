<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('javascript_notifier_settings');
delete_site_option('javascript_notifier_settings');
delete_option('javascript_notifier_message');
delete_site_option('javascript_notifier_message');
delete_option('javascript_notifier_block');
delete_site_option('javascript_notifier_block');
delete_option('javascript_notifier_fg_color');
delete_site_option('javascript_notifier_fg_color');
delete_option('javascript_notifier_bg_color');
delete_site_option('javascript_notifier_bg_color');
delete_option('javascript_notifier_font_size');
delete_site_option('javascript_notifier_font_size');
delete_option('javascript_notifier_opacity');
delete_site_option('javascript_notifier_opacity');
delete_option('javascript_notifier_custom_css');
delete_site_option('javascript_notifier_custom_css');

