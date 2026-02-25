<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pages_setting');
delete_site_option('pages_setting');
delete_option('ccgquickly_media');
delete_site_option('ccgquickly_media');
delete_option('ccgquickly_addmedia');
delete_site_option('ccgquickly_addmedia');
delete_option('ccgquickly_settings');
delete_site_option('ccgquickly_settings');
delete_option('ccgquickly_post');
delete_site_option('ccgquickly_post');
delete_option('ccgquickly_addpost');
delete_site_option('ccgquickly_addpost');
delete_option('ccgquickly_tools');
delete_site_option('ccgquickly_tools');
delete_option('ccgquickly_users');
delete_site_option('ccgquickly_users');

