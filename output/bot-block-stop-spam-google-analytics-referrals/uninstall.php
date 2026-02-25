<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bot_block');
delete_site_option('bot_block');
delete_option('bot_block_master_table');
delete_site_option('bot_block_master_table');
delete_option('bot_block_log');
delete_site_option('bot_block_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('bot_block_cron');
wp_clear_scheduled_hook('bot_block_send_stats');

