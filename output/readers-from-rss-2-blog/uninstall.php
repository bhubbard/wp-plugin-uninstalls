<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('rfr2b_activate');
delete_site_option('rfr2b_activate');
delete_option('rfr2b_name');
delete_site_option('rfr2b_name');
delete_option('rfr2b_email');
delete_site_option('rfr2b_email');
delete_option('wsa_alert_msg');
delete_site_option('wsa_alert_msg');

