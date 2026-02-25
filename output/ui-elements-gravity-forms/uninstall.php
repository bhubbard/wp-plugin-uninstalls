<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('primary');
delete_site_option('primary');
delete_option('hightlight');
delete_site_option('hightlight');
delete_option('midGrey');
delete_site_option('midGrey');
delete_option('messageText');
delete_site_option('messageText');
delete_option('messageBackground');
delete_site_option('messageBackground');
delete_option('error');
delete_site_option('error');
delete_option('borderRadius');
delete_site_option('borderRadius');
delete_option('fontSize');
delete_site_option('fontSize');
delete_option('placeholder_colour');
delete_site_option('placeholder_colour');
delete_option('label_top');
delete_site_option('label_top');
delete_option('label_left');
delete_site_option('label_left');
delete_option('translateY');
delete_site_option('translateY');

