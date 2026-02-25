<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_button_facebook');
delete_site_option('social_button_facebook');
delete_option('social_button_twitter');
delete_site_option('social_button_twitter');
delete_option('social_button_google');
delete_site_option('social_button_google');
delete_option('social_button_email');
delete_site_option('social_button_email');
delete_option('social_button_color');
delete_site_option('social_button_color');
delete_option('social_button_color_hover');
delete_site_option('social_button_color_hover');

