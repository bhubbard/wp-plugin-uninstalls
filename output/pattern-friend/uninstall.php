<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pattern_friend_mobile_max_threshold');
delete_site_option('pattern_friend_mobile_max_threshold');
delete_option('pattern_friend_tablet_max_threshold');
delete_site_option('pattern_friend_tablet_max_threshold');
delete_option('pattern_friend_header_sticky');
delete_site_option('pattern_friend_header_sticky');
delete_option('pattern_friend_dynamic_css_version');
delete_site_option('pattern_friend_dynamic_css_version');

// Delete Transients
delete_transient('pattern_friend_plugin_activated');
delete_site_transient('pattern_friend_plugin_activated');

