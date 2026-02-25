<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpp_hide_admin_notice');
delete_site_option('rpp_hide_admin_notice');
delete_option('rpp_display_notice_time');
delete_site_option('rpp_display_notice_time');
delete_option('rpp_activation_time');
delete_site_option('rpp_activation_time');
delete_option('rpp_post_types');
delete_site_option('rpp_post_types');

