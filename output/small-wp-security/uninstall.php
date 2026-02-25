<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_wp_security_link_meta');
delete_site_option('sp_wp_security_link_meta');
delete_option('sp_wp_security_wp_version');
delete_site_option('sp_wp_security_wp_version');
delete_option('sp_wp_security_rss');
delete_site_option('sp_wp_security_rss');
delete_option('sp_wp_security_security_header');
delete_site_option('sp_wp_security_security_header');
delete_option('sp_wp_security_emojis');
delete_site_option('sp_wp_security_emojis');
delete_option('sp_wp_security_comments');
delete_site_option('sp_wp_security_comments');

