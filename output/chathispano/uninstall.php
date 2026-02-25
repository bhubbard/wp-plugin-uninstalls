<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chathispano_webchat_nick');
delete_site_option('chathispano_webchat_nick');
delete_option('chathispano_webchat_realname');
delete_site_option('chathispano_webchat_realname');
delete_option('chathispano_webchat_chan');
delete_site_option('chathispano_webchat_chan');
delete_option('chathispano_webchat_autojoin');
delete_site_option('chathispano_webchat_autojoin');
delete_option('chathispano_webchat_theme');
delete_site_option('chathispano_webchat_theme');
delete_option('chathispano_webchat_layout');
delete_site_option('chathispano_webchat_layout');
delete_option('chathispano_webchat_height');
delete_site_option('chathispano_webchat_height');
delete_option('chathispano_webchat_width');
delete_site_option('chathispano_webchat_width');

