<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tw_mobile_domain');
delete_site_option('tw_mobile_domain');
delete_option('tw_mobile_theme');
delete_site_option('tw_mobile_theme');
delete_option('tw_bot_theme');
delete_site_option('tw_bot_theme');
delete_option('tw_user_bot_theme');
delete_site_option('tw_user_bot_theme');

