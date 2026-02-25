<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_content_message');
delete_site_option('hide_content_message');
delete_option('hide_content_links');
delete_site_option('hide_content_links');
delete_option('hide_content_text_signup');
delete_site_option('hide_content_text_signup');
delete_option('hide_content_url_signup');
delete_site_option('hide_content_url_signup');
delete_option('hide_content_text_login');
delete_site_option('hide_content_text_login');
delete_option('hide_content_url_login');
delete_site_option('hide_content_url_login');

