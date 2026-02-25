<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendcloud_email');
delete_site_option('sendcloud_email');
delete_option('sendcloud_lable');
delete_site_option('sendcloud_lable');
delete_option('sendcloud_fromname');
delete_site_option('sendcloud_fromname');
delete_option('sendcloud_post_publish_notify');
delete_site_option('sendcloud_post_publish_notify');
delete_option('sendcloud_posts_reply_notify');
delete_site_option('sendcloud_posts_reply_notify');
delete_option('sendcloud_posts_publish_notify_subject');
delete_site_option('sendcloud_posts_publish_notify_subject');
delete_option('sendcloud_posts_publish_notify_content');
delete_site_option('sendcloud_posts_publish_notify_content');
delete_option('sendcloud_posts_reply_notify_subject');
delete_site_option('sendcloud_posts_reply_notify_subject');
delete_option('sendcloud_posts_reply_notify_content');
delete_site_option('sendcloud_posts_reply_notify_content');
delete_option('sendcloud_version');
delete_site_option('sendcloud_version');
delete_option('sendcloud_quota_exceeded');
delete_site_option('sendcloud_quota_exceeded');
delete_option('sendcloud_invitecode');
delete_site_option('sendcloud_invitecode');

