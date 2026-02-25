<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbp_topic_notice_body');
delete_site_option('_bbp_topic_notice_body');
delete_option('_bbp_topic_notice_title');
delete_site_option('_bbp_topic_notice_title');
delete_option('_bbp_reply_notice_body');
delete_site_option('_bbp_reply_notice_body');
delete_option('_bbp_reply_notice_title');
delete_site_option('_bbp_reply_notice_title');

