<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookie_policy_link');
delete_site_option('cookie_policy_link');
delete_option('cookie_accept_button_text');
delete_site_option('cookie_accept_button_text');
delete_option('cookie_message');
delete_site_option('cookie_message');
delete_option('cookie_what_are_link_text');
delete_site_option('cookie_what_are_link_text');

