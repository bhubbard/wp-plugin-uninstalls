<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ual_login_button_text');
delete_site_option('ual_login_button_text');
delete_option('ual_text_above_form');
delete_site_option('ual_text_above_form');
delete_option('ual_login_error_msg');
delete_site_option('ual_login_error_msg');
delete_option('ual_redirect_login');
delete_site_option('ual_redirect_login');

