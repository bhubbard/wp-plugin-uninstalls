<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_onoffswitch');
delete_site_option('st_onoffswitch');
delete_option('st_sb_color');
delete_site_option('st_sb_color');
delete_option('st_sb_width');
delete_site_option('st_sb_width');
delete_option('st_sb_border_size');
delete_site_option('st_sb_border_size');
delete_option('st_sb_border_style');
delete_site_option('st_sb_border_style');
delete_option('st_sb_border_color');
delete_site_option('st_sb_border_color');
delete_option('st_sb_border_radius');
delete_site_option('st_sb_border_radius');
delete_option('st_rail_color_opacity');
delete_site_option('st_rail_color_opacity');
delete_option('st_onoffswitch_autohide');
delete_site_option('st_onoffswitch_autohide');
delete_option('st_sb_speed');
delete_site_option('st_sb_speed');
delete_option('st_rail_align_switch');
delete_site_option('st_rail_align_switch');
delete_option('st_sb_active_opacity');
delete_site_option('st_sb_active_opacity');
delete_option('st_sb_mouse_step');
delete_site_option('st_sb_mouse_step');
delete_option('st_smothscroll_switch');
delete_site_option('st_smothscroll_switch');
delete_option('st_bouncescroll_switch');
delete_site_option('st_bouncescroll_switch');
delete_option('st_mouse_switch');
delete_site_option('st_mouse_switch');

