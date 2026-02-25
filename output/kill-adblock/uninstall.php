<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kill_adBlock_status');
delete_site_option('kill_adBlock_status');
delete_option('kill_adBlock_random_class_name');
delete_site_option('kill_adBlock_random_class_name');
delete_option('kill_adBlock_message');
delete_site_option('kill_adBlock_message');
delete_option('kill_adBlock_message_delay');
delete_site_option('kill_adBlock_message_delay');
delete_option('kill_adBlock_close_btn');
delete_site_option('kill_adBlock_close_btn');
delete_option('kill_adBlock_close_automatically');
delete_site_option('kill_adBlock_close_automatically');
delete_option('kill_adBlock_close_automatically_delay');
delete_site_option('kill_adBlock_close_automatically_delay');
delete_option('kill_adBlock_message_type');
delete_site_option('kill_adBlock_message_type');

