<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gptranslate_options');
delete_site_option('gptranslate_options');
delete_option('gptranslate_default_language');
delete_site_option('gptranslate_default_language');

// Clear Cron Jobs
wp_clear_scheduled_hook('gptranslate_daily_update_check');

