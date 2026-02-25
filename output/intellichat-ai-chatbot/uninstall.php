<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intellichat_ai_chatbot_id');
delete_site_option('intellichat_ai_chatbot_id');
delete_option('intellichat_ai_install_time');
delete_site_option('intellichat_ai_install_time');
delete_option('intellichat_ai_review_notice_dismissed');
delete_site_option('intellichat_ai_review_notice_dismissed');
delete_option('intellichat_ai_review_notice_remind');
delete_site_option('intellichat_ai_review_notice_remind');

