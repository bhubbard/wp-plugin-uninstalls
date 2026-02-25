<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phayoune_ribbon_active');
delete_site_option('phayoune_ribbon_active');
delete_option('phayoune_ribbon_display_mode');
delete_site_option('phayoune_ribbon_display_mode');
delete_option('phayoune_ribbon_specific_ids');
delete_site_option('phayoune_ribbon_specific_ids');
delete_option('phayoune_site_grayscale');
delete_site_option('phayoune_site_grayscale');
delete_option('phayoune_grayscale_display_mode');
delete_site_option('phayoune_grayscale_display_mode');
delete_option('phayoune_grayscale_specific_ids');
delete_site_option('phayoune_grayscale_specific_ids');
delete_option('phayoune_ribbon_position');
delete_site_option('phayoune_ribbon_position');
delete_option('phayoune_ribbon_offset_x');
delete_site_option('phayoune_ribbon_offset_x');
delete_option('phayoune_ribbon_offset_y');
delete_site_option('phayoune_ribbon_offset_y');
delete_option('phayoune_ribbon_zindex');
delete_site_option('phayoune_ribbon_zindex');
delete_option('phayoune_ribbon_gap');
delete_site_option('phayoune_ribbon_gap');
delete_option('phayoune_ribbon_img_url');
delete_site_option('phayoune_ribbon_img_url');
delete_option('phayoune_ribbon_link');
delete_site_option('phayoune_ribbon_link');
delete_option('phayoune_ribbon_width');
delete_site_option('phayoune_ribbon_width');
delete_option('phayoune_ribbon_anim_type');
delete_site_option('phayoune_ribbon_anim_type');
delete_option('phayoune_ribbon_anim_speed');
delete_site_option('phayoune_ribbon_anim_speed');
delete_option('phayoune_ribbon2_active');
delete_site_option('phayoune_ribbon2_active');
delete_option('phayoune_ribbon2_img_url');
delete_site_option('phayoune_ribbon2_img_url');
delete_option('phayoune_ribbon2_link');
delete_site_option('phayoune_ribbon2_link');
delete_option('phayoune_ribbon2_width');
delete_site_option('phayoune_ribbon2_width');
delete_option('phayoune_ribbon2_anim_type');
delete_site_option('phayoune_ribbon2_anim_type');
delete_option('phayoune_ribbon2_anim_speed');
delete_site_option('phayoune_ribbon2_anim_speed');

