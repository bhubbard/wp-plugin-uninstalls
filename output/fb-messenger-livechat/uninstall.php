<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbmsg_version');
delete_site_option('fbmsg_version');
delete_option('fbmsg_title');
delete_site_option('fbmsg_title');
delete_option('fbmsg_page');
delete_site_option('fbmsg_page');
delete_option('fbmsg_timeline');
delete_site_option('fbmsg_timeline');
delete_option('fbmsg_events');
delete_site_option('fbmsg_events');
delete_option('fbmsg_pos');
delete_site_option('fbmsg_pos');
delete_option('fbmsg_lang');
delete_site_option('fbmsg_lang');
delete_option('fbmsg_active');
delete_site_option('fbmsg_active');

