<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kbtam_content_updated');
delete_site_option('kbtam_content_updated');
delete_option('kbtam_activation_date');
delete_site_option('kbtam_activation_date');
delete_option('kbtam_show_rating');
delete_site_option('kbtam_show_rating');
delete_option('kbtam_black_friday_dismissed');
delete_site_option('kbtam_black_friday_dismissed');
delete_option('widget_kantbtrue_about_me');
delete_site_option('widget_kantbtrue_about_me');

