<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otm_ac_show_zoom');
delete_site_option('otm_ac_show_zoom');
delete_option('otm_ac_show_cursor');
delete_site_option('otm_ac_show_cursor');
delete_option('otm_ac_show_invert_colors');
delete_site_option('otm_ac_show_invert_colors');
delete_option('otm_ac_show_contrast');
delete_site_option('otm_ac_show_contrast');
delete_option('otm_ac_show_grayscale');
delete_site_option('otm_ac_show_grayscale');
delete_option('otm_ac_show_brightness');
delete_site_option('otm_ac_show_brightness');
delete_option('otm_ac_icon_color');
delete_site_option('otm_ac_icon_color');
delete_option('otm_ac_branding_color');
delete_site_option('otm_ac_branding_color');
delete_option('otm_ac_position');
delete_site_option('otm_ac_position');
delete_option('otm_ac_show_highlight_links');
delete_site_option('otm_ac_show_highlight_links');
delete_option('otm_ac_show_hide_images');
delete_site_option('otm_ac_show_hide_images');
delete_option('otm_ac_show_tooltips');
delete_site_option('otm_ac_show_tooltips');
delete_option('otm_ac_show_read_page');
delete_site_option('otm_ac_show_read_page');
delete_option('otm_ac_show_reading_line');
delete_site_option('otm_ac_show_reading_line');
delete_option('otm_ac_show_readable_fonts');
delete_site_option('otm_ac_show_readable_fonts');
delete_option('otm_ac_voice_lang');
delete_site_option('otm_ac_voice_lang');
delete_option('otm_ac_show_logo');
delete_site_option('otm_ac_show_logo');
delete_option('otm_ac_status');
delete_site_option('otm_ac_status');
delete_option('otm_accessibly_token');
delete_site_option('otm_accessibly_token');

