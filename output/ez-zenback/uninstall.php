<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ez_zenback_setting_opt');
delete_site_option('ez_zenback_setting_opt');
delete_option('ez_zenback_position');
delete_site_option('ez_zenback_position');
delete_option('ez_zenback_single');
delete_site_option('ez_zenback_single');
delete_option('ez_zenback_page');
delete_site_option('ez_zenback_page');
delete_option('ez_zenback_closed_comment');
delete_site_option('ez_zenback_closed_comment');
delete_option('ez_zenback_accuracy');
delete_site_option('ez_zenback_accuracy');
delete_option('ez_zenback_style_enable');
delete_site_option('ez_zenback_style_enable');
delete_option('ez_zenback_before_post');
delete_site_option('ez_zenback_before_post');
delete_option('ez_before_post');
delete_site_option('ez_before_post');
delete_option('ez_before_post_home');
delete_site_option('ez_before_post_home');
delete_option('ez_before_post_single');
delete_site_option('ez_before_post_single');
delete_option('ez_before_post_page');
delete_site_option('ez_before_post_page');
delete_option('ez_before_post_category');
delete_site_option('ez_before_post_category');
delete_option('ez_before_post_search');
delete_site_option('ez_before_post_search');
delete_option('ez_before_post_archive');
delete_site_option('ez_before_post_archive');
delete_option('ez_zenback_after_post');
delete_site_option('ez_zenback_after_post');
delete_option('ez_after_post');
delete_site_option('ez_after_post');
delete_option('ez_after_post_home');
delete_site_option('ez_after_post_home');
delete_option('ez_after_post_single');
delete_site_option('ez_after_post_single');
delete_option('ez_after_post_page');
delete_site_option('ez_after_post_page');
delete_option('ez_after_post_category');
delete_site_option('ez_after_post_category');
delete_option('ez_after_post_search');
delete_site_option('ez_after_post_search');
delete_option('ez_after_post_archive');
delete_site_option('ez_after_post_archive');
delete_option('ez_zenback_code');
delete_site_option('ez_zenback_code');
delete_option('ez_zenback_exc');
delete_site_option('ez_zenback_exc');
delete_option('ez_zenback_style');
delete_site_option('ez_zenback_style');
delete_option('ez_zenback_updated');
delete_site_option('ez_zenback_updated');
delete_option('ez_zenback_checkver_stamp');
delete_site_option('ez_zenback_checkver_stamp');
delete_option('widget_ezzenbackwidget');
delete_site_option('widget_ezzenbackwidget');

