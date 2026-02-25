<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reply_comment_message_subject');
delete_site_option('reply_comment_message_subject');
delete_option('reply_comment_message');
delete_site_option('reply_comment_message');

