<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eu_cookie_text_color');
delete_site_option('eu_cookie_text_color');
delete_option('eu_cookie_bg_color');
delete_site_option('eu_cookie_bg_color');
delete_option('eu_cookie_animation_type');
delete_site_option('eu_cookie_animation_type');
delete_option('eu_cookie_message');
delete_site_option('eu_cookie_message');

