<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cur_subject');
delete_site_option('cur_subject');
delete_option('add_new_email_txt');
delete_site_option('add_new_email_txt');

