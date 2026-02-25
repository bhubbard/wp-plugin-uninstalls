<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shiftt_notify_appid');
delete_site_option('shiftt_notify_appid');
delete_option('shiftt_notify_appsecret');
delete_site_option('shiftt_notify_appsecret');
delete_option('shiftt_notify_wxtemplateid');
delete_site_option('shiftt_notify_wxtemplateid');
delete_option('shiftt_notify_author_openid');
delete_site_option('shiftt_notify_author_openid');

