<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lead_share_message');
delete_site_option('lead_share_message');
delete_option('magnet_genius_api_key');
delete_site_option('magnet_genius_api_key');
delete_option('magnet_genius_audience_key');
delete_site_option('magnet_genius_audience_key');
delete_option('magnet_genius_wemail_api_key');
delete_site_option('magnet_genius_wemail_api_key');
delete_option('magnet_genius_whatsapp_api_key');
delete_site_option('magnet_genius_whatsapp_api_key');
delete_option('magnet_genius_db_version');
delete_site_option('magnet_genius_db_version');
delete_option('magnet_genius_plugin_version');
delete_site_option('magnet_genius_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('lm_magnet_genius_cron');

