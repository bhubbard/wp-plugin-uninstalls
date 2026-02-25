<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jotform_ai_chatbot_options');
delete_site_option('jotform_ai_chatbot_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('jotform_ai_chatbot_cron_hook');

