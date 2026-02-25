<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatfloat_number');
delete_site_option('chatfloat_number');
delete_option('chatfloat_text');
delete_site_option('chatfloat_text');
delete_option('chatfloat_prefill_message');
delete_site_option('chatfloat_prefill_message');
delete_option('chatfloat_position');
delete_site_option('chatfloat_position');
delete_option('chatfloat_bg_color');
delete_site_option('chatfloat_bg_color');
delete_option('chatfloat_text_color');
delete_site_option('chatfloat_text_color');
delete_option('chatfloat_display_desktop');
delete_site_option('chatfloat_display_desktop');
delete_option('chatfloat_display_mobile');
delete_site_option('chatfloat_display_mobile');
delete_option('chatfloat_darkmode');
delete_site_option('chatfloat_darkmode');
delete_option('chatfloat_top_margin');
delete_site_option('chatfloat_top_margin');
delete_option('chatfloat_bottom_margin');
delete_site_option('chatfloat_bottom_margin');
delete_option('chatfloat_horizontal_margin');
delete_site_option('chatfloat_horizontal_margin');

