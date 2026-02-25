<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enable_loop_0');
delete_site_option('enable_loop_0');
delete_option('screenshot_plugin_code_1');
delete_site_option('screenshot_plugin_code_1');
delete_option('enable_have_a_suggestion_button_in_footer_2');
delete_site_option('enable_have_a_suggestion_button_in_footer_2');

