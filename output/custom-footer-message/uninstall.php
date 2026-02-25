<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfmsg_footer_message');
delete_site_option('cfmsg_footer_message');
delete_option('cfmsg_message_enabled');
delete_site_option('cfmsg_message_enabled');
delete_option('cfmsg_text_color');
delete_site_option('cfmsg_text_color');
delete_option('cfmsg_bg_color');
delete_site_option('cfmsg_bg_color');
delete_option('cfmsg_font_family');
delete_site_option('cfmsg_font_family');
delete_option('cfmsg_font_size');
delete_site_option('cfmsg_font_size');
delete_option('cfmsg_text_align');
delete_site_option('cfmsg_text_align');

