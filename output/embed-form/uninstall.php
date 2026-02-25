<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jotform-ai-chatbot_admin_notice_dismissed');
delete_site_option('jotform-ai-chatbot_admin_notice_dismissed');

