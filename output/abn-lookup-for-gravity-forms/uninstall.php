<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravityformsaddon_itsg_gf_abnlookup_settings_settings');
delete_site_option('gravityformsaddon_itsg_gf_abnlookup_settings_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('itsg_abnlookup_clear_cache_cron');

