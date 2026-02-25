<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kprj_allowed_email_types');
delete_site_option('kprj_allowed_email_types');
delete_option('kprj_access_key_status');
delete_site_option('kprj_access_key_status');
delete_option('kprj_access_key_status_color');
delete_site_option('kprj_access_key_status_color');
delete_option('kprj_access_key');
delete_site_option('kprj_access_key');

