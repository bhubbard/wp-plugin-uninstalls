<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpua_doctype');
delete_site_option('wpua_doctype');
delete_option('wpua_icon_size');
delete_site_option('wpua_icon_size');
delete_option('wpua_show_text_icons');
delete_site_option('wpua_show_text_icons');
delete_option('wpua_icon_style');
delete_site_option('wpua_icon_style');
delete_option('wpua_icon_style_input');
delete_site_option('wpua_icon_style_input');
delete_option('wpua_text_using');
delete_site_option('wpua_text_using');
delete_option('wpua_text_on');
delete_site_option('wpua_text_on');
delete_option('wpua_text_via');
delete_site_option('wpua_text_via');
delete_option('wpua_show_version');
delete_site_option('wpua_show_version');
delete_option('wpua_text_links');
delete_site_option('wpua_text_links');
delete_option('wpua_show_full_ua');
delete_site_option('wpua_show_full_ua');
delete_option('wpua_hide_unknown_ua');
delete_site_option('wpua_hide_unknown_ua');
delete_option('wpua_admin_only');
delete_site_option('wpua_admin_only');
delete_option('wpua_output_location');
delete_site_option('wpua_output_location');
delete_option('ua_output_location');
delete_site_option('ua_output_location');
delete_option('ua_doctype');
delete_site_option('ua_doctype');
delete_option('ua_comment_size');
delete_site_option('ua_comment_size');
delete_option('ua_show_text');
delete_site_option('ua_show_text');
delete_option('ua_image_style');
delete_site_option('ua_image_style');
delete_option('ua_image_css');
delete_site_option('ua_image_css');
delete_option('ua_text_surfing');
delete_site_option('ua_text_surfing');
delete_option('ua_text_on');
delete_site_option('ua_text_on');
delete_option('ua_text_via');
delete_site_option('ua_text_via');
delete_option('ua_text_links');
delete_site_option('ua_text_links');
delete_option('ua_show_ua_bool');
delete_site_option('ua_show_ua_bool');
delete_option('ua_hide_unknown_bool');
delete_site_option('ua_hide_unknown_bool');
delete_option('ua_admin_only_bool');
delete_site_option('ua_admin_only_bool');
delete_option('ua_track_size');
delete_site_option('ua_track_size');

