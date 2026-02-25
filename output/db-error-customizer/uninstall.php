<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('template_select');
delete_site_option('template_select');
delete_option('template_bg_color');
delete_site_option('template_bg_color');
delete_option('template_bg_img_attachment_id');
delete_site_option('template_bg_img_attachment_id');
delete_option('template_bg_img_url');
delete_site_option('template_bg_img_url');
delete_option('template_logo_attachment_id');
delete_site_option('template_logo_attachment_id');
delete_option('template_logo_url');
delete_site_option('template_logo_url');
delete_option('template_youtube_id');
delete_site_option('template_youtube_id');
delete_option('template_font_color');
delete_site_option('template_font_color');
delete_option('template_title');
delete_site_option('template_title');
delete_option('template_sub_title');
delete_site_option('template_sub_title');
delete_option('email_enabled');
delete_site_option('email_enabled');
delete_option('email_freq');
delete_site_option('email_freq');
delete_option('email_target');
delete_site_option('email_target');
delete_option('email_subject');
delete_site_option('email_subject');
delete_option('email_msg');
delete_site_option('email_msg');
delete_option('plugin_activate_notice_shown');
delete_site_option('plugin_activate_notice_shown');

