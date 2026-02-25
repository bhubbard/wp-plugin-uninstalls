<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_plugin_do_activation_redirect');
delete_site_option('my_plugin_do_activation_redirect');
delete_option('cookie_text_data');
delete_site_option('cookie_text_data');
delete_option('cookie_text_time');
delete_site_option('cookie_text_time');
delete_option('cookie_text_url');
delete_site_option('cookie_text_url');
delete_option('cookie_text_bg');
delete_site_option('cookie_text_bg');
delete_option('cookie_text_brd');
delete_site_option('cookie_text_brd');

