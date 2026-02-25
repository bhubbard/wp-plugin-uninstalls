<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmd-pages');
delete_site_option('cmd-pages');
delete_option('cmd-posts');
delete_site_option('cmd-posts');
delete_option('cmd-links');
delete_site_option('cmd-links');
delete_option('cmd-widgets');
delete_site_option('cmd-widgets');
delete_option('cmd-menu');
delete_site_option('cmd-menu');
delete_option('cmd-users');
delete_site_option('cmd-users');
delete_option('cmd-media');
delete_site_option('cmd-media');
delete_option('cmd-comments');
delete_site_option('cmd-comments');
delete_option('cmd-plugins');
delete_site_option('cmd-plugins');
delete_option('cmd-settings');
delete_site_option('cmd-settings');

