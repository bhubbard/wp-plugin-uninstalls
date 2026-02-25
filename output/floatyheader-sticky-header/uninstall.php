<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floatyheader_sh_selector');
delete_site_option('floatyheader_sh_selector');
delete_option('floatyheader_sh_bg_color');
delete_site_option('floatyheader_sh_bg_color');
delete_option('floatyheader_sh_text_color');
delete_site_option('floatyheader_sh_text_color');
delete_option('floatyheader_sh_offset');
delete_site_option('floatyheader_sh_offset');
delete_option('floatyheader_sh_transition_effect');
delete_site_option('floatyheader_sh_transition_effect');
delete_option('floatyheader_sh_disable_mobile');
delete_site_option('floatyheader_sh_disable_mobile');
delete_option('floatyheader_sh_mobile_bg_color');
delete_site_option('floatyheader_sh_mobile_bg_color');
delete_option('floatyheader_sh_mobile_text_color');
delete_site_option('floatyheader_sh_mobile_text_color');
delete_option('floatyheader_sh_scroll_up_mode');
delete_site_option('floatyheader_sh_scroll_up_mode');
delete_option('floatyheader_sh_scroll_up_desktop');
delete_site_option('floatyheader_sh_scroll_up_desktop');
delete_option('floatyheader_sh_scroll_up_mobile');
delete_site_option('floatyheader_sh_scroll_up_mobile');

