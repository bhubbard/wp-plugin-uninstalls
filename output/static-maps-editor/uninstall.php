<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('static_maps_editor_uid');
delete_site_option('static_maps_editor_uid');
delete_option('static_maps_editor_privacy_policy_accepted');
delete_site_option('static_maps_editor_privacy_policy_accepted');
delete_option('static_maps_editor_tos_accepted');
delete_site_option('static_maps_editor_tos_accepted');
delete_option('static_maps_editor_menu');
delete_site_option('static_maps_editor_menu');
delete_option('static_maps_editor_size_width');
delete_site_option('static_maps_editor_size_width');
delete_option('static_maps_editor_size_height');
delete_site_option('static_maps_editor_size_height');
delete_option('static_maps_editor_activated_static_maps_editor');
delete_site_option('static_maps_editor_activated_static_maps_editor');
delete_option('static_maps_editor_uid_fetch_error');
delete_site_option('static_maps_editor_uid_fetch_error');
delete_option('static_maps_editor_uid_fetch_error_messages');
delete_site_option('static_maps_editor_uid_fetch_error_messages');

