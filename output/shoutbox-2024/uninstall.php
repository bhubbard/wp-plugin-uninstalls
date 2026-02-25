<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shoutbox2024_refresh-interval');
delete_site_option('shoutbox2024_refresh-interval');
delete_option('shoutbox2024_default-font-colour');
delete_site_option('shoutbox2024_default-font-colour');
delete_option('shoutbox2024_locale');
delete_site_option('shoutbox2024_locale');
delete_option('shoutbox2024_cleanup');
delete_site_option('shoutbox2024_cleanup');
delete_option('shoutbox2024_pm-background-colour');
delete_site_option('shoutbox2024_pm-background-colour');
delete_option('shoutbox2024_new-message-colour');
delete_site_option('shoutbox2024_new-message-colour');
delete_option('shoutbox2024_height');
delete_site_option('shoutbox2024_height');
delete_option('shoutbox2024_options');
delete_site_option('shoutbox2024_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('shoutbox2024_cleanup');

