<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alt_logo_url');
delete_site_option('alt_logo_url');
delete_option('alt_backlog_visibility');
delete_site_option('alt_backlog_visibility');
delete_option('alt_template');
delete_site_option('alt_template');
delete_option('alt_username');
delete_site_option('alt_username');
delete_option('alt_logo_click_url');
delete_site_option('alt_logo_click_url');
delete_option('alt_password');
delete_site_option('alt_password');
delete_option('alt_button');
delete_site_option('alt_button');
delete_option('alt_remember_button');
delete_site_option('alt_remember_button');
delete_option('alt_lost_password');
delete_site_option('alt_lost_password');
delete_option('alt_success');
delete_site_option('alt_success');
delete_option('alt_username_error');
delete_site_option('alt_username_error');
delete_option('alt_password_error');
delete_site_option('alt_password_error');
delete_option('alt_empty_username');
delete_site_option('alt_empty_username');
delete_option('alt_empty_password');
delete_site_option('alt_empty_password');

