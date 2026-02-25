<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mid_photocard_default_bg_image');
delete_site_option('mid_photocard_default_bg_image');
delete_option('mid_photocard_default_site_logo');
delete_site_option('mid_photocard_default_site_logo');
delete_option('mid_photocard_default_site_name');
delete_site_option('mid_photocard_default_site_name');
delete_option('mid_photocard_default_site_icon');
delete_site_option('mid_photocard_default_site_icon');
delete_option('mid_photocard_default_bg_solid_1');
delete_site_option('mid_photocard_default_bg_solid_1');
delete_option('mid_photocard_default_bg_solid_2');
delete_site_option('mid_photocard_default_bg_solid_2');
delete_option('mid_photocard_default_bg_color_1');
delete_site_option('mid_photocard_default_bg_color_1');
delete_option('mid_photocard_default_bg_color_2');
delete_site_option('mid_photocard_default_bg_color_2');
delete_option('mid_photocard_default_title_color');
delete_site_option('mid_photocard_default_title_color');
delete_option('mid_photocard_default_dc_bg_color');
delete_site_option('mid_photocard_default_dc_bg_color');
delete_option('mid_photocard_default_dc_text_color');
delete_site_option('mid_photocard_default_dc_text_color');
delete_option('mid_photocard_default_site_logo_new');
delete_site_option('mid_photocard_default_site_logo_new');
delete_option('mid_photocard_site_logo_enabled');
delete_site_option('mid_photocard_site_logo_enabled');
delete_option('mid_photocard_site_icon_enabled');
delete_site_option('mid_photocard_site_icon_enabled');
delete_option('mid_photocard_title_shadow_enabled');
delete_site_option('mid_photocard_title_shadow_enabled');
delete_option('mid_photocard_canvas_width');
delete_site_option('mid_photocard_canvas_width');
delete_option('mid_photocard_canvas_height');
delete_site_option('mid_photocard_canvas_height');
delete_option('mid_photocard_public_enabled');
delete_site_option('mid_photocard_public_enabled');
delete_option('mid_photocard_default_comments_text');
delete_site_option('mid_photocard_default_comments_text');
delete_option('mid_photocard_copy_url_enabled');
delete_site_option('mid_photocard_copy_url_enabled');

