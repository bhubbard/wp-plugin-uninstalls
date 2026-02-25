<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpdisablebbpnotificationallfeature');
delete_site_option('bbpdisablebbpnotificationallfeature');
delete_option('newtopicemail');
delete_site_option('newtopicemail');
delete_option('newreplyemail');
delete_site_option('newreplyemail');
delete_option('bbpress_notify_newreply_email_subject');
delete_site_option('bbpress_notify_newreply_email_subject');
delete_option('bbpress_notify_newreply_email_body');
delete_site_option('bbpress_notify_newreply_email_body');

