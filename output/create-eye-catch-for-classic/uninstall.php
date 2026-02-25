<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eyeCatchUrl');
delete_site_option('eyeCatchUrl');
delete_option('totalLine');
delete_site_option('totalLine');
delete_option('oneLineTextLength');
delete_site_option('oneLineTextLength');
delete_option('fontSize');
delete_site_option('fontSize');
delete_option('topMargin');
delete_site_option('topMargin');
delete_option('leftMargin');
delete_site_option('leftMargin');
delete_option('fontColor');
delete_site_option('fontColor');

