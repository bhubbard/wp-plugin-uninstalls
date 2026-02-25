<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('repliii_enabled');
delete_site_option('repliii_enabled');
delete_option('repliii_user_id');
delete_site_option('repliii_user_id');
delete_option('repliii_button_color');
delete_site_option('repliii_button_color');
delete_option('repliii_button_opacity');
delete_site_option('repliii_button_opacity');
delete_option('repliii_header_title');
delete_site_option('repliii_header_title');
delete_option('repliii_header_bg');
delete_site_option('repliii_header_bg');
delete_option('repliii_header_text');
delete_site_option('repliii_header_text');
delete_option('repliii_placeholder');
delete_site_option('repliii_placeholder');
delete_option('repliii_svg_logo');
delete_site_option('repliii_svg_logo');

