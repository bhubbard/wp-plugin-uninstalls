<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csanim_enabled');
delete_site_option('csanim_enabled');
delete_option('csanim_mobile');
delete_site_option('csanim_mobile');
delete_option('csanim_cursor_style');
delete_site_option('csanim_cursor_style');
delete_option('csanim_custom_cursor');
delete_site_option('csanim_custom_cursor');
delete_option('csanim_cursor_size');
delete_site_option('csanim_cursor_size');
delete_option('csanim_type');
delete_site_option('csanim_type');
delete_option('csanim_trail_length');
delete_site_option('csanim_trail_length');
delete_option('csanim_trail_size');
delete_site_option('csanim_trail_size');
delete_option('csanim_trail_color');
delete_site_option('csanim_trail_color');
delete_option('csanim_speed');
delete_site_option('csanim_speed');

