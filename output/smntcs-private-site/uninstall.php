<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smntcs_ps_enable');
delete_site_option('smntcs_ps_enable');
delete_option('smntcs_ps_background');
delete_site_option('smntcs_ps_background');
delete_option('smntcs_ps_message_color');
delete_site_option('smntcs_ps_message_color');
delete_option('smntcs_ps_message');
delete_site_option('smntcs_ps_message');
delete_option('smntcs_ps_login_button');
delete_site_option('smntcs_ps_login_button');

