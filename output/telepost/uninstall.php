<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('telegram_fetch_settings_option_name');
delete_site_option('telegram_fetch_settings_option_name');
delete_option('last_tg_cron_executed');
delete_site_option('last_tg_cron_executed');

// Clear Cron Jobs
wp_clear_scheduled_hook('tpost_sgs_scrapeTelegram_cron_event');

