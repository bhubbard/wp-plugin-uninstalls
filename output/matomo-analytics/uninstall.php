<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajdg_matomo_siteid');
delete_site_option('ajdg_matomo_siteid');
delete_option('ajdg_matomo_siteurl');
delete_site_option('ajdg_matomo_siteurl');
delete_option('ajdg_matomo_active');
delete_site_option('ajdg_matomo_active');
delete_option('ajdg_matomo_track_feed_clicks');
delete_site_option('ajdg_matomo_track_feed_clicks');
delete_option('ajdg_matomo_track_error_pages');
delete_site_option('ajdg_matomo_track_error_pages');
delete_option('ajdg_matomo_track_incognito');
delete_site_option('ajdg_matomo_track_incognito');
delete_option('ajdg_matomo_heartbeat_enable');
delete_site_option('ajdg_matomo_heartbeat_enable');
delete_option('ajdg_matomo_wc_downloads');
delete_site_option('ajdg_matomo_wc_downloads');
delete_option('ajdg_matomo_track_feed_impressions');
delete_site_option('ajdg_matomo_track_feed_impressions');
delete_option('ajdg_matomo_high_accuracy');
delete_site_option('ajdg_matomo_high_accuracy');
delete_option('ajdg_matomo_hide_review');
delete_site_option('ajdg_matomo_hide_review');
delete_option('ajdg_activate_matomo-analytics');
delete_site_option('ajdg_activate_matomo-analytics');

// Delete Transients
delete_transient('ajdg_update_matomo-analytics');
delete_site_transient('ajdg_update_matomo-analytics');

