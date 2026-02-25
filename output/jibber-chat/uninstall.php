<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jibber_chat_ID');
delete_site_option('jibber_chat_ID');
delete_option('jibber_chat_hideFrontPage');
delete_site_option('jibber_chat_hideFrontPage');

