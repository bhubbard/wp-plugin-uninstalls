<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_advancedsteamwidget');
delete_site_option('widget_advancedsteamwidget');

// Clear Cron Jobs
wp_clear_scheduled_hook('advanced_steam_widget_update');

